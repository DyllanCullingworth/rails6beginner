class Post < ApplicationRecord
  validates :title, presence: true
  validates :summary, presence: true
  validates :body, presence: true

  belongs_to :category

  def details
    "This post was created on #{ created_at.strftime("%d/%m/%Y") }"
  end
  #called by @post.details
  # This is an instance method, below we will create a class method:

  def self.total
    #returns a total number of posts
    # Post.all.size
    all.size
  end

end
