class User < ActiveRecord::Base
	attr_accessor :remember_token

  cattr_accessor :current_user# for use of global variable to access current user in models- precisly order model to store users id and dispaly users models
  # has_many :orders # new line 05/12 
  # dependent: :destroy  
  # User Model

	before_save { self.email = email.downcase }

	validates :name, length: { in: 4..30 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
                        format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false }

      validates :password, presence: true, length: { minimum: 6 }
      validates :password_confirmation, presence: true
      has_secure_password      # A magic method!!


       # Returns the hash digest of a string.
      def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
      end

      # Returns a random token.
      def User.new_token
        SecureRandom.urlsafe_base64
      end

       # Remembers a user in the database for use in persistent sessions.
      def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
      end

       # Returns true if the given token matches the digest.
      def authenticated?(remember_token)
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
      end

      # Forgets a user.
       def forget
          update_attribute(:remember_digest, nil)
       end
    def current_user=(user)
      Thread.current[:current_user] = user
    end

    def current_user
      Thread.current[:current_user]
    end
  
end
