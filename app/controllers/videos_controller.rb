class VideosController < ApplicationController
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
end