class User < ActiveRecord::Base
	validates :username, presence: true
	validates :email, format: {with: /.+@.+[.][^.]{2,}\z/}, uniqueness: true
	validates :password, :length => { :in => 8..20 }

end
