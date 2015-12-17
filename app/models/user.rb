class User < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true, length: { minimum: 10 }

	has_many :bikes, dependent: :destroy

	has_secure_password
end
