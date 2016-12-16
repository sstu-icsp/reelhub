class CommentsController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show]
  # before_action :find_user
  # before_action :find_feed, only: [:show, :edit, :update, :destroy]

  # def index
  # 	@feed = @user.feeds.all.order('created_at DESC')
  # end

  # def new 
  # 	@feed = @user.feeds.new
  # end

  # def create
  # 	@feed = @user.feeds.new(feed_params)

  # 	if @feed.save 
  # 		redirect_to user_feeds_path
  # 	else
  # 		render 'new'
  # 	end
  # end

  # def show
  #   #
  # end

  # def edit
  #   #
  # end

  # def update
  # 	if @feed.update(feed_params)
  #     redirect_to :action => :show, status: 303
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   @feed.destroy
  #   redirect_to :action => :index, status: 303
  # end

  # private 

  # def feed_params
  # 	params.require(:feed).permit(:title, :body, :video_path, :rank, :image)
  # end

  # def find_user
  #   @user = User.find(params[:user_id])
  # end

  # def find_feed
  #   @feed = Feed.find(params[:id])
  # end
end