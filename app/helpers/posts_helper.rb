module PostsHelper
  def post_meta post
    "Created #{time_ago_in_words(post.created_at)} ago within #{post.category.title}. Post has been viewed #{post.views.to_s} times"
  end
end
