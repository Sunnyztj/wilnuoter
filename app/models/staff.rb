class Staff < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: "100x100#", small: "270x356#", medium: "x400", large: "x700" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  scope :load_by_position, ->{ all.order('position') }
end
