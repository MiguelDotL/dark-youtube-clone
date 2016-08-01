class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @videos = Video.all
    @current =  Video.find(params[:id])
    @other_videos = Video.all
    # @other_videos = Video.where("id <> 1")
    render 'home/index'
  end
end
