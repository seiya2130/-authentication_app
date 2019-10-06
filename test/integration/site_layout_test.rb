require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "check_links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", signup_path
  end
end
