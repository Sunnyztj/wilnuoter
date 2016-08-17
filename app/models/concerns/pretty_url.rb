module PrettyUrl
  extend ActiveSupport::Concern

  included do
    after_save :update_url_name
  end

  module ClassMethods
    def find(id)
      self.find_by_url_name id
    end
  end

  def to_param
    url_name
  end

  private
  def update_url_name
    self.url_name = name.parameterize
  end

end
