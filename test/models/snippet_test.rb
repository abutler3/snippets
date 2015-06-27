require 'test_helper'

class SnippetTest < ActiveSupport::TestCase

  def setup
    @user = User.create(email: "abutler3@gmail.com", password: "password")
    @snippet = @user.snippets.build(name: "Ruby code", summary: "Reverse string method", description: "xxdfdg")
  end

  test "snippet should be valid" do
    assert @snippet.valid?
  end

  test "user_id should be present" do
    @snippet.user_id = nil
    assert_not @snippet.valid?
  end

  test "name should be present" do
    @snippet.name = " "
    assert_not @snippet.valid?
  end

  test "name should not be too long" do
    @snippet.name = "a" * 101
    assert_not @snippet.valid?
  end

  test "name should not be too short" do
    @snippet.name = "sddf"
    assert_not @snippet.valid?
  end

  test "summary should be present" do
    @snippet.summary = " "
    assert_not @snippet.valid?
  end


  test "summary should not be too long" do
    @snippet.summary = "a" * 101
    assert_not @snippet.valid?
  end

  test "summary should not be too short" do
    @snippet.summary = "sddf"
    assert_not @snippet.valid?
  end

  test "description should be present" do
    @snippet.description = " "
    assert_not @snippet.valid?
  end


  # test "description should not be too long" do
  #   @snippet.description = "<div>sdfksndfsdfsfdsdfsdgehrthjyjd</div>"
  #   assert_not @snippet.valid?
  # end
  #
  # test "description should not be too short" do
  #   @snippet.description = "sd"
  #   assert_not @snippet.valid?
  # end


end
