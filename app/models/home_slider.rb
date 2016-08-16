class HomeSlider < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "1920x950>", :thumb => "200x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  scope :active, ->{where(status: true).order(:position)}
end
