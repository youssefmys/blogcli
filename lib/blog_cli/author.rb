class BlogCLI
  class Author < ActiveRecord::Base
    has_many :posts
  end
end
