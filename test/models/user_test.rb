require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	def setup
		@user = User.new(email: "redeyetuning@gmail.com", name:"Samuel", password: "foobar", password_confirmation: "foobar") 
	end

	test "User should be valid" do
		assert @user.valid?
	end	

 	test "Email should be present" do 
  	@user.email = ""
  	assert_not @user.valid?
  end

	test "Email should be 6+ characters" do
		@user.email = "a"*5
		assert_not @user.valid?	
	end

	test "Email should be unique" do
		duplicate_user = @user.dup
		@user.save
		assert_not duplicate_user.valid?
	end

  test "Name should be present" do 
  	@user.name = ""
  	assert_not @user.valid?
  end

  test "Password should be present" do 
  	@user.password = @user.password_confirmation = ""
  	assert_not @user.valid?
  end

  test "Password should be 6+ char" do 
  	@user.password = @user.password_confirmation = "a"*5
  	assert_not @user.valid?
  end
end
