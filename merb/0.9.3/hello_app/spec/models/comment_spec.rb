require File.join( File.dirname(__FILE__), "..", "spec_helper" )

describe Comment do

  it "should belong to a post" do 
    comment = Comment.new
    comment.should respond_to(:post)
  end

end
