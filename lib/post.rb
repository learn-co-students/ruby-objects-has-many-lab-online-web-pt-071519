  require 'pry'
class Post
attr_accessor :title # :author
attr_reader :author
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
def self.all
  @@all
end
def author=(author_obj)

    @author = author_obj
    author_obj.posts << self

end
def author_name
  if author.methods.include? :name
    author.name
  else nil
  end
end
end
