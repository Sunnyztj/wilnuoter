class Product < ActiveRecord::Base
  include PrettyUrl

  STATUS = %w(draft private public)

  validates :status, inclusion: {in: STATUS}

  scope :publish,    where(status: 'public')
  scope :privated,   where(status: 'private')
  scope :drafted,    where(status: 'draft')
  scope :available,  where(status: %w(public private))

  has_attached_file :image, styles: { thumb: "100x100#", small: "x200", medium: "x400", large: "x700" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def price
    retail_price
  end

  def friends_price
    if attributes['friends_price'].present? and attributes['friends_price'] > 0
      attributes['friends_price']
    else
      retail_price 
    end
  end

end