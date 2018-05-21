require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = User.create( email: "redeyetuning@gmail.com", name:"Samuel", password: "foobar", password_confirmation: "foobar") 
  	@post = Post.new(title: "Hello World", body: "Hello world, it's nice to meet you", user_id: 1)
  end

  test "Post is valid" do
  	assert @post.valid? 
  end

  test "Post title is not blank" do
  	@post.title = ""
  	assert_not @post.valid?
  end

  test "Post title is less than 40 char" do
  	@post.title = "a"*51
  	assert_not @post.valid?
  end

  test "Post body is not blank" do
  	@post.body = ""
  	assert_not @post.valid?
  end

  test "Post has user_id" do
  	@post.user_id = ""
  	assert_not @post.valid?
  end
end
