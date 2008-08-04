class Post
  include DataMapper::Resource
  property :id,         Serial
  property :title,      String,  :nullable => false
  property :body,       Text

  property :created_at, DateTime
  before :save do
    attribute_set(:created_at, DateTime.now) if new_record?
  end

  has n, :comments
end
