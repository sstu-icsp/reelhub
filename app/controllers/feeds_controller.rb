class FeedsController < ApplicationController

  def index
  	@feed = Feed.all.order('updated_at DESC')
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
  	@feed = Feed.find(params[:id])
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
  	params.require(:feed).permit(:title, :body)
  end

  def find_feeds
  	@feed = Feed.find(params[:id])
  end
end
