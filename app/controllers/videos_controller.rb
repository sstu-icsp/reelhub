class VideosController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_user
  before_action :find_video, only: [:show, :edit, :update, :destroy]

  def index
  	@video = @user.videos.all.order('created_at DESC')
  end

  def new 
  	@video = @user.videos.new
  end

  def create
    @video = @user.videos.new(video_params)

  	if @video.save 
  		redirect_to :action => :index, status: 303
  	else
  		render 'new'
  	end
  end

  def show
    #
  end

  def edit
    #
  end

  def update
  	if @video.update(video_params)
      redirect_to :action => :show, status: 303
    else
      render 'edit'
    end
  end

  def destroy 
    @video.destroy
    redirect_to :action => :index, status: 303
  end

  private 

  def video_params
  	params.require(:video).permit(:title, :description, :rank, :view_count, :video_size, :video_dimensions, :thumbnail_path)
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_video
  	@video = Video.find(params[:id])
  end
end
