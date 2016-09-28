class VideosController < ApplicationController
  def index
  	@video = Video.all.order('updated_at DESC')
  end

  def new 
  	@video = Video.new
  end

  def create
  	@video = Video.new(feed_params)

  	if @video.save 
  		redirect_to @video
  	else
  		render 'new'
  	end
  end

  def show
  	@video = Video.find(params[:id])
  end

  def destroy 
  	#
  end

  def edit
  	#
  end

  def update
  	#
  end

  private 

  def feed_params
  	params.require(:video).permit(:title, :description, :rank, :view_count, :view_size, :view_dimensions, :thumbnail_path)
  end

  def find_videos
  	@video = Video.find(params[:id])
  end
end
