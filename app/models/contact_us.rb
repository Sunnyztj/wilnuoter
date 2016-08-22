class ContactUs
  include ActiveModel::Conversion
  extend  ActiveModel::Naming
  include ActiveModel::Validations

  attr_accessor :name, :email, :phone_number, :subject, :message, :captcha

  validates :name, :email, :message, presence: true

  def initialize(attributes = {})
    attributes.each do |attr, value|
      self.send "#{attr}=", value
    end unless attributes.blank?
  end

  def persisted?
    false
  end

  def save
    return if captcha.present?
    if valid?
      Notification.notify_us(self).deliver
    end
  end
end