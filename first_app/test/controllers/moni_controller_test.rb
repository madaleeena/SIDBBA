require 'test_helper'

class MoniControllerTest < ActionDispatch::IntegrationTest
  test "should get monitoriza��ao" do
    get moni_monitoriza��ao_url
    get favorito_path
    assert_response :success
  end

end
