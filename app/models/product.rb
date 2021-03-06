class Product < ActiveRecord::Base
  has_many :order_items
  has_attached_file :photo, :styles => { :small => "300x300>" }

  default_scope { where(active: true) }
  validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end