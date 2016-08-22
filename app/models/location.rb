class Location < ApplicationRecord
 has_many :users
 # belongs_to :user
geocoded_by :address
after_validation :geocode, :if => :address_changed?
end
