class Blog < ActiveRecord::Base
  include PrettyUrl

  validates :name, :body, presence: true

  has_attached_file :feature_image, styles: { thumb: "100x100#", small: "x200", medium: "x400", large: "x700" }
  validates_attachment_content_type :feature_image, content_type: /\Aimage\/.*\Z/
end
