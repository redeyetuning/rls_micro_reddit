require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	User.create(email: "redeyetuning@gmail.com", name:"Samuel", password: "foobar", password_confirmation: "foobar") 
    Post.create(title: "Hello World", body: "Hello world, it's nice to meet you", user_id: 1)
    @comment = Comment.new(body: "Hello world, its nice to meet you", user_id: 1, post_id: 1)
  end

  test "Comment is true" do
    assert @comment.valid?
  end

  test "Comment body is not blank" do
  	@comment.body = ""
  	assert_not @comment.valid?
  end

  test "Comment has user_id" do
  	@comment.user_id = ""
  	assert_not @comment.valid?
  end

   test "Comment has post_id" do
  	@comment.post_id = ""
  	assert_not @comment.valid?
  end
end
