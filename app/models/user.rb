class User < ApplicationRecord::Base
	validates :name, presence: true
	validates :email, presence: true
end
