require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@comment = Comment.new(body: "Hello world, its nice to meet you", user_id: 1, post_id: 1)
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
