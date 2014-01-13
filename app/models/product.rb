class Product < ActiveRecord::Base
  has_many :buyers
  belongs_to :member
end
