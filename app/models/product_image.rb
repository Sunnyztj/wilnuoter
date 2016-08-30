class ProductImage < ActiveRecord::Base
  belongs_to :product

  has_attached_file :image, styles: {small: '170x356#', middle: '500x500#', large: '800'}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
