class HomeController < ApplicationController
  def index
    @current = Video.find(params[:id] ? params[:id] : 1) # || Video.find(1)
    @videos = Video.all
    @other_videos = Video.where("id <> 1")
    # @other_videos = Video.where("id <> #{@current}")
    # @other_videos = Video.where('id <> "#{@current}"')
      # @other_videos = Video.where("id >= 1 and id <= 10 and id <> #{@current}")
  end

end
