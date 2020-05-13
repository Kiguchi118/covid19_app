require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get subjects_new_url
    assert_response :success
  end

end
