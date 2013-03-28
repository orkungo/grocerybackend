class Shelf < ActiveRecord::Base
  attr_accessible :description, :name
  attr_accessible :shelves_attributes

  has_many :products
  accepts_nested_attributes_for :products, :allow_destroy => true

end
