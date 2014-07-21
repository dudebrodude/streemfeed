class User < ActiveRecord::Base
	has_one :profile
	has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates :fname, length: { minimum: 2 }
   validates :lname, length: { minimum: 2 }

            def to_s
         	"#{fname} #{lname}"
end
end
