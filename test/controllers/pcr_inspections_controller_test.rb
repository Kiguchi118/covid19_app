require 'test_helper'

class PcrInspectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pcr_inspections_new_url
    assert_response :success
  end

end
