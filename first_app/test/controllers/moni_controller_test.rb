require 'test_helper'

class MoniControllerTest < ActionDispatch::IntegrationTest
  test "should get monitorizaÇõao" do
    get moni_monitorizaÇõao_url
    assert_response :success
  end

end
