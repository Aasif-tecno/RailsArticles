class HomeController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :desc)
    @categories = Category.all
  end
end
