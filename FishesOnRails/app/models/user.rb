class User < ApplicationRecord

	validates :username, uniqueness: true,
						presence: true,
						format: { with: /\A[a-zA-Z0-9]+\Z/ }
 
end
 