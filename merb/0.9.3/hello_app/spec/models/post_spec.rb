require File.join( File.dirname(__FILE__), "..", "spec_helper" )

describe Post do

  it "should save cleanly, have an id, and know when it was created" do
    post = Post.new(:title => 'Hello', :body => 'World')
    post.id.should be_nil
    post.created_at.should be_nil
    post.save.should be_true
    post.id.should_not be_nil
    post.created_at.should_not be_nil
  end

  it "should not be valid without a title" do
    post = Post.new
    post.should_not be_valid
    post.errors[:title].should_not be_nil
  end

  it "should not be valid without a title" do
    post = Post.new(:body => 'World')
    post.should_not be_valid
    post.errors[:title].should_not be_nil
  end

  it "should have comments" do
    post = Post.new
    post.should respond_to(:comments)
  end

end
