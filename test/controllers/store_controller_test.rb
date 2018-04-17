require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
    assert_select '#column #side a', minimun: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Programming Ruby'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
