class VideosController < ApplicationController
  before_action :logged_in_user

  def index
    @categories = Category.all
    @categories.each do |category|
      category.videos = category.recent_videos
    end
  end

  def show
    @video = Video.find(params[:id])
  end

  def search
    @search_term = params[:search]
    @videos = Video.search_by_title(@search_term)
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end