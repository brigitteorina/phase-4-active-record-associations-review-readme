class Post < ApplicationRecord
    belongs_to :author
    has_many :post_tags
    has_many :tags, through: :post_tags
end

post = Post.new(title: "Web Development for Dogs")
new_author = post.create_author(name: "Lasandra Gulgowski")
post.save