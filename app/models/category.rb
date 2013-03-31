class Category < ActiveRecord::Base
  attr_accessible :name, :photo_url
  has_many :taggings
  has_many :products, through: :taggings

  def to_s
    name
  end
end
