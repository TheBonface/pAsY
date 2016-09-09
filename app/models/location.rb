class Location < ApplicationRecord
 belongs_to :user

 validates :user_id, presence: true 
 # belongs_to :user
geocoded_by :address
after_validation :geocode, :if => :address_changed?
end

# acts_as_gmappable

# def gmaps4rails_address
#   #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
#   "#{self.street}, #{self.city}, #{self.country}" 
# end
