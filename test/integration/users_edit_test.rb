require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user =users(:bonface)
  end 

  test "unsuccessful edit" do
    get edit_user_path(@user)
    assert_templete 'users/edit'
    patch user_path(@users), user: { name: "",
                                     email: "foo@invalid",
                                     password: "foo",
                                     password_confirmation: "bar" }
    assert_templete 'users/edit'
  end 

  test "successful edit" do 
    get edit_user_path(@user)
    assert_templete 'users/edit'
    name = "Foo Bar"
    email = "foo@bar.com"
    patch user_path(@user),user: { name: name, email: email, 
                                   password: "",
                                   password_confirmation: ""}
    assert_not flash.empty?
    assertr_redirected_to @user 
    @user.reload 
    assert_equal @user.name, name
    assert_equal @user.email,emai 
  end 
end
