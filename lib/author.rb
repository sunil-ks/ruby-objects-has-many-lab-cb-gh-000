class Author
  @@post_count = 0
  attr_accessor :posts,:name
  def initialize(name)
    @name = name
    @posts = []
  end
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  def add_post_by_title(name)
    new_post = Post.new(name)
    add_post(new_post)
  end
  def self.post_count
    @@post_count
  end
end
