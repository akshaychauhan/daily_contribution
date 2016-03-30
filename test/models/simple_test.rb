require 'test_helper'

class SimpleTest < ActiveSupport::TestCase
  def setup
    @user = users(:akshay)
    @user.stubs(:full_text).returns("akshaychauhan")
  end

  test "the truth" do
    assert_equal @user.full_text("akshay", "chauhan"), "akshaychauhan"
  end

  describe "first example" do
	  
	  let(:user){ users(:akshay) }

	  before do
	    user.stubs(:full_text).returns("akshaychauhan")
	  end

	  it "can run test" do
	    assert_equal true, true
	    assert_equal user.full_text("akshay", "chauhan"), "akshaychauhan"
	  end
	end

end
