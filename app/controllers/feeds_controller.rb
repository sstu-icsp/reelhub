class FeedsController < ApplicationController
  #  before_action :find_feed, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, except: [:index, :show]

  before_action :find_user
  before_action :find_feed, only: [:show]

  def index
  	@feed = @user.feeds.all.order('created_at DESC')
  end

  def new 
  	@feed = @user.feeds.new
  end

  def create
  	@feed = @user.feeds.new(feed_params)

  	if @feed.save 
  		redirect_to user_feeds_path
  	else
  		render 'new'
  	end
  end

  def show
    @feed = Feed.where(user_id: @user).order('created_at DESC')
  end

  def edit
    #
  end

  def update
  	if @feed.update(feed_params)
      redirect_to @feed
    else
      render 'edit'
    end
  end

  def destroy
    @feed.destroy
    redirect_to :action => :index, status: 303
  end

  private 

  def feed_params
  	params.require(:feed).permit(:title, :body, :video_path, :rank)
  end

  def find_feed
    @feed = Feed.where(user_id: @user).order('created_at DESC')
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  # def find_feed
  #   @user = User.find(params[:user_id])
  # end
end
