class Order < ActiveRecord::Base


  belongs_to :order_status
  # belongs_to :user # new line 05/12
  has_many :order_items
  before_create :set_order_status
  before_create :set_user
  
  before_save :update_subtotal
  before_save :update_user
  before_save :update_order_status
  

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.order_status_id = 1
   end
  def set_user
      @user = User.current_user.id
      self.user_id = User.current_user.id
      # session[:user]
  end
  # here i am going  to add change status to 2 or 3 shipped cancled etc

  def update_subtotal
    self[:subtotal] = subtotal 

  end
  def update_order_status
    if self.order_status_id = 1
      self.order_status_id = 2
    else
    end

  end
  
  def update_user 
    @user = User.current_user.id
    self[:user_id] = User.current_user.id
  end

end