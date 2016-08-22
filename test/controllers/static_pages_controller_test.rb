require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home | Physical Addressing System"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | Physical Addressing System"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | Physical Addressing System"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | Physical Addressing System"
  end

end
