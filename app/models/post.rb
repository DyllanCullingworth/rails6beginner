class Post < ApplicationRecord
  validates :title, presence: true
  validates :summary, presence: true
  validates :body, presence: true

  belongs_to :category
  belongs_to :account

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

  #callbacks - validation / save / create / update etc
  after_create :update_total_posts_count

  scope :active, -> { where( active: true ) }
  scope :order_by_latest_first, -> { order( created_at: :desc) }
  scope :limit_2, -> { limit( 2 ) }

  private


  def update_total_posts_count
    # update category total count column to show total posts count
    category.increment(:total_count, 1).save
  end
  #callbacks
  def post_log_message
    #
    puts "Post created with an id of #{id}"
  end
end
