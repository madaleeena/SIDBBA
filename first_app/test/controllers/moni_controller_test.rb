require 'test_helper'

class MoniControllerTest < ActionDispatch::IntegrationTest
  test "should get monitoriza��ao" do
    get moni_monitoriza��ao_url
    assert_response :success
  end

end
