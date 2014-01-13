class Buyer < ActiveRecord::Base
  validates_uniqueness_of :product_id, scope: :member_id
  belongs_to :member
  belongs_to :product
end
