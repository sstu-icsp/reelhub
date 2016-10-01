class FeedsController < ApplicationController
  before_action :find_feed, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, except: [:index, :show]

  def index
  	@feed = Feed.all.order('created_at DESC')
  end

  def new 
  	@feed = Feed.new
  end

  def create
  	@feed = Feed.new(feed_params)

  	if @feed.save 
  		redirect_to @feed
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
  	params.require(:feed).permit(:title, :body)
  end

  def find_feed
  	@feed = Feed.find(params[:id])
  end
end
