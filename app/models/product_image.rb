class ProductImage < ActiveRecord::Base
  belongs_to :product

  has_attached_file :image, styles: {small: '300x225#', large: '800'}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
