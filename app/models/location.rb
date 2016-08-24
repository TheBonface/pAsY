class Location < ApplicationRecord
 belongs_to :user

 validates :user_id, presence: true 
 # belongs_to :user
geocoded_by :address
after_validation :geocode, :if => :address_changed?
end
