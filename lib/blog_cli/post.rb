class BlogCLI::Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :category

  validate :author_is_not_nil
  validate :category_is_not_nil
  
  def author_is_not_nil
    if self.author == nil
      errors.add(:nil_author, "author should not be nil!")
    end
  end

  def category_is_not_nil
    if self.author == nil
      errors.add(:nil_category, "category should not be nil!")
    end
  end

end
