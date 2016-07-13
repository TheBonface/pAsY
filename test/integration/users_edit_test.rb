require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user =users(:bonface)
  end 

  test "unsuccessful edit" do 
    log_in_as(@user)
    get edit_user_path(@user)
    assert_templete 'users/edit'
    patch user_path(@users), user: { name: "",
                                     email: "foo@invalid",
                                     password: "foo",
                                     password_confirmation: "bar" }
    assert_templete 'users/edit'
  end 

  test "successful edit" do  
    log_in_as(@user)
    get edit_user_path(@user)
    assert_templete 'users/edit'
    name = "Foo Bar"
    email = "foo@bar.com"
    patch user_path(@user), params:{
      user: { name: name, email: email, 
                                   password: "",
                                   password_confirmation: ""
    } 
    } 
    assert_not flash.empty?
    assertr_redirected_to @user 
    @user.reload 
    assert_equal @user.name, name
    assert_equal @user.email,emai 
  end
  test "successful edit with friendly forwarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_path(@user)
    name = "Foo Bar"
    email = "foo@bar.com"

    patch user_path(@user),params: {
      user: {
        name: name,
                                    email: email,
                                    password:
                                    "foobar",
                                    password_confirmation: "foobar"
      }
    }
	updating-users
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal @user.name, name
    assert_equal @user.email, email
  end
end 
