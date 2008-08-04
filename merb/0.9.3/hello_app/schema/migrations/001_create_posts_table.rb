migration(1, :create_posts_table) do

  up do
    create_table :posts do
      column :id,         Integer, :serial => true
      column :title,      String
      column :body,       DataMapper::Types::Text, :length => 65535,
                                                   :size   => 65535
      column :created_at, DateTime
    end
  end

  down do
    drop_table :posts
  end

end
