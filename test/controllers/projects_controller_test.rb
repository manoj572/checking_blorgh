require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get projects_signup_url
    assert_response :success
  end

  test "should get signpage" do
    get projects_signpage_url
    assert_response :success
  end

  test "should get loginpage" do
    get projects_loginpage_url
    assert_response :success
  end
end
