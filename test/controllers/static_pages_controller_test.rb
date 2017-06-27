require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	def setup
		@baseTitle = "Ruby on Rails Tutorial Sample App"
	end


  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@baseTitle}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@baseTitle}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@baseTitle}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@baseTitle}"
  end

end
