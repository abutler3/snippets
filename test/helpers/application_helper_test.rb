require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  def valid_params
    { email: "john@example.com", password: "password", name: "John Doe" }
  end


  test "avatar_url constructs an image using gravatar" do

    user = User.new valid_params
    assert_equal "<img alt=\"john@example.com\" class=\"gravatar\" src=\"https://secure.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}?s=80\" />", gravatar_for(user)
  end
end
