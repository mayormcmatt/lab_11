require 'test_helper'

class RitlyControllerTest < ActionController::TestCase
  test "should get go" do
    get :go
    assert_response :success
  end

  test "should get random_generated_code" do
    get :random_generated_code
    assert_response :success
  end

end
