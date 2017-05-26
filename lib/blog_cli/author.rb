class BlogCLI::Author < ActiveRecord::Base
  
  has_many :posts
  validate :valid_email

  def valid_email
    if !email.nil?
      if !self.email.include?('@') 
        errors.add(:Bad_email, "email should contain @ sympol")
      end
    end
    
    end
  end
