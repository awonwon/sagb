class Member < ActiveRecord::Base
	validates_presence_of :email, :password, :name
  has_many :friendships #the relation is many, so add "s"
  has_many :friends, through: :friendships  #through means i'll search in this relation  
  has_many :buyers
  has_many :inbuys, ->{where("buyers.status=1")}, class_name: "Buyer"
  has_many :unbuys, ->{where("buyers.status=0")}, class_name: "Buyer"
  has_many :products
  has_many :bought_products, through: :inbuys, source: :product #source is ...
  has_many :invited_products, through: :unbuys, source: :product
  

	def self.confirm(email, password) #self = this
		self.find_by_email_and_password(email, password) #db_find
		#auto return
	end
end
