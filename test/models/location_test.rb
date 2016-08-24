require 'test_helper'

class LocationTest < ActiveSupport::TestCase
def setup
  @user =users (:bonface)
  #this code is not idiomatically correct 
  @location = @user.locations.build(address:"Kisumu", user_id: @user_id, latitude: -0.292492, longitude: 36.060555, street_name: "oginga odinga" , country: "Kenya", door_number:"D5", plot_number:"b5/234", county: "Kisumu")
end 
  
test "should be valid" do
  assert @location.valid?
end 

test "user id should be present " do 
  @location.user_id = nil 
  assert_not @location.valid?
end 
  # test "the truth" do
  #   assert true
  # end
end
