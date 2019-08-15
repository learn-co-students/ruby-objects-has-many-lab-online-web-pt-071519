class Author
  @posts = []
  def initialize(name)
    @name = name
    @posts = []
  end
  attr_accessor :name
  def posts
    @posts
  end
  def add_post(post)
    @posts << post
    post.author = self
  end
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
  end
  def self.post_count
  Post.all.count
end


end
