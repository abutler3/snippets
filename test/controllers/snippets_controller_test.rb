require 'test_helper'

class SnippetsControllerTest < ActionController::TestCase

  setup do
    @snippet2 = Snippet.new(name: "Rails code", summary: "Reverse string method", description: "xxdfdg", user_id: 1)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snippets)
  end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end
  #
  # test "should create post" do
  #   assert_difference('Post.count') do
  #     post :create, post: { body: @post.body, title: @post.title }
  #   end
  #
  #   assert_redirected_to post_path(assigns(:post))
  # end

  # test "let's stub a class again" do
  #   Snippet.stubs(:find).with(1).returns(
  #       Snippet.new(:name => "Project Greenlight"))
  #   assert_equal("Project Greenlight", Snippet.find(1).name)
  # end
  #
  # test "should show post" do
  #   @user = User.create(email: "abutler3@gmail.com", password: "password")
  #   @snippet = @user.snippets.build(name: "Ruby code", summary: "Reverse string method", description: "xxdfdg")
  #   get :show, @snippet2 => {:id => 1}
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @post
  #   assert_response :success
  # end
  #
  # test "should update post" do
  #   patch :update, id: @post, post: { body: @post.body, title: @post.title }
  #   assert_redirected_to post_path(assigns(:post))
  # end
  #
  # test "should destroy post" do
  #   assert_difference('Post.count', -1) do
  #     delete :destroy, id: @post
  #   end
  #
  #   assert_redirected_to posts_path
  # end


  # test "the index method displays all projects correctly" do
  #   get :index
  #   assert_equal()@snippet1
  #   # assert_select @snippet2.id, 2
  # end
  #

  #
  # test "the project method creates a project" do
  #   post :create, project: {name: "Runway", tasks: "start something:2"}
  #   assert_redirected_to projects_path
  #   assert_equal "Runway", assigns[:action].project.name
  # end
  #

  # test "the project method creates a project (mock version)" do
  #   fake_project = mock(create: true)
  #   CreatesProject.expects(:new)
  #       .with(name: "Runway", task_string: "start something:2")
  #       .returns(fake_project)
  #   post :create, project: {name: "Runway", tasks: "start something:2"}
  #   assert_redirected_to projects_path
  #   refute_nil assigns[:action]
  # end
  #
  # test "on failure we go back to the form" do
  #   post :create, project: {name: "", tasks: ""}
  #   assert_template :new
  #   refute_nil assigns(:project)
  # end
  #
  # test "fail create gracefully" do
  #   assert_no_difference('Project.count') do
  #     Project.any_instance.expects(:save).returns(false)
  #     post :create, :project => {:name => 'Project Runway'}
  #     assert_template('new')
  #   end
  # end
  #
  # test "fail update gracefully" do
  #   sample = Project.create!(name: "Test Project")
  #   Project.any_instance.expects(:update_attributes).returns(false)
  #   patch :update, id: projects(:one), project: {name: "Fred"}
  #   assert_template('edit')
  #   actual = Project.find(sample.id)
  #   assert_not_equal("Fred", actual.name)
  # end
  #
  # test "let's stub a class again" do
  #   Project.stubs(:find).with(1).returns(
  #       Project.new(:name => "Project Greenlight"))
  #   Project.stubs(:find).with(2).returns(
  #       Project.new(:name => "Project Blue Book"))
  #   assert_equal("Project Greenlight", Project.find(1).name)
  #   assert_equal("Project Blue Book", Project.find(2).name)
  # end
  #
  # #
  # test "routing" do
  #   assert_routing "/projects", controller: "projects", action: "index"
  #   assert_routing({path: "/projects", method: "post"},
  #       controller: "projects", action: "create")
  #   assert_routing "/projects/new", controller: "projects", action: "new"
  #   assert_routing "/projects/1", controller: "projects",
  #       action: "show", id: "1"
  #   assert_routing "/projects/1/edit", controller: "projects",
  #       action: "edit", id: "1"
  #   assert_routing({path: "/projects/1", method: "patch"},
  #       controller: "projects", action: "update", id: "1")
  #   assert_routing({path: "/projects/1", method: "delete"},
  #       controller: "projects", action: "destroy", id: "1")
  # end
end
