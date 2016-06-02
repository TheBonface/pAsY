class User < ApplicationRecord::Base
	validates :name, presence: true, length: {maimum:50}
	validates :email, presence: true, length: {maximum:255}
end
