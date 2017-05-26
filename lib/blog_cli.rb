require_relative '../config/environment.rb'


ActiveRecord::Migration.check_pending!

#module BlogCLI
  
#end

require_relative 'blog_cli/author.rb'
require_relative 'blog_cli/category.rb'
require_relative 'blog_cli/post.rb'
