class Post < ApplicationRecord
  belongs_to :category

  # Low level caching
  def self.foods_category_posts
    Rails.cache.fetch("food_category_post", expires_in: 2.minutes) do

      # Will return the post objects, so if we update any field value, still we will get correct response.
      Post.includes(:category).where(categories: {name: 'Category 4'})

      # Will return the values, so if we update any field value then we won't get updated values
      # posts = Post.includes(:category).where(categories: {name: 'Category 4'})
      # posts.select(:id, :title).map { |p| {id: p.id, title: p.title} }
    end
  end

end
