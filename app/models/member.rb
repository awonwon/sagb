class Member < ActiveRecord::Base
	validates_presence_of :email, :password, :name

	def self.confirm(email, password) #self = this
		self.find_by_email_and_password(email, password) #db_find
		#auto return
	end
end
