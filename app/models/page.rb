class Page < ActiveRecord::Base
  include PrettyUrl

  belongs_to :parent, class_name: 'Page'
  has_many :children, class_name: 'Page', foreign_key: 'parent_id'

  attr_accessible :body, :name, :url_name, :banner_image, :parent_id, :custom_url
  has_attached_file :banner_image, styles: {small: '384x100#', large: '1920x500#'}

  validates :name, presence: true
  validates_attachment_content_type :banner_image, :content_type => /\Aimage\/.*\Z/

  scope :root, where(parent_id: nil)
end
