class BlogCLI::Cli

  attr_reader :last_input, :current_user
  
  def call
    puts 'Welcome to your CLI blog!'
    login
    menu
  end

  def login
    puts 'please enter your email to log in:'
    @current_user = BlogCLI::Author.find_or_create_by(email: user_input)
    puts 'you are now logged in as #{@current_user.name}'
  end
  
  def menu
    puts 'What would you like to do?'
    puts '1.Write a post'
    puts '2.List your posts'
    puts '3.List all posts'
    main_menu_loop
  end

  def post_index
    puts '---Posts by you @{@current_user.name}---'
    @current_user.posts.each do |post|
      puts "#{post.id}. #{post.title} "
    end
  end
  def main_menu_loop
    while user_input != "exit"
    case @last_input.to_i
    when 1
      write_post
    when 2
      post_index
    when 3
      list_posts
    else
      menu
      break
    end
    end
  end

  def user_input
    @last_input = gets.strip 
  end

  private
  
  def write_post

    params = {}
    
    puts 'Please enter the title of your post:'
    params[:title] = user_input

    puts 'Please enter the content of your post:'
    params[:content] = user_input

    params[:category] = BlogCLI::Category.find_or_create_by(name: user_input)

    post = BlogCLI::Post.create(params)
    post.author = @current_user 
    post.save
    
  end


  def list_posts
    BlogCLI::Post.all.each do |post|
      puts "#{post.id}. #{post.title}"
    end
  end
end


