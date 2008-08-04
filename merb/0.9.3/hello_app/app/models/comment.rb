class Comment
  include DataMapper::Resource

  property :id,         Integer, :serial => true
  property :posted_by,  String
  property :body,       Text
  property :created_at, DateTime

  before :save do |o|
    o.created_at = DateTime.now
  end

  belongs_to :post

end
