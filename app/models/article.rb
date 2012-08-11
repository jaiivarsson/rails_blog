class Article < ActiveRecord::Base
  attr_accessible :title, :content
  
  validates :title, :content, presence: true

  before_save :create_slug


  def create_slug
    self.slug = self.title.downcase.gsub(/[^a-z0-9]+/,'-')
  end
end


