class PostsController < ApplicationController

  def index
    @categories = Category.all
    @posts = Post.all
  end

  # Low level caching
  def show
    @posts = Post.foods_category_posts
  end
end
