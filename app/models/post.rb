class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :contact, type: String
end
