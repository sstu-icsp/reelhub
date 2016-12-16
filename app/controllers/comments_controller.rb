class CommentsController < ApplicationController
  def create
    @feed = Feed.find(params[:feed_id])
    @comment = @feed.comments.create(params[:comment].permit(:name, :email, :body))
    @user = current_user

    redirect_to user_feed_path(@user.id)
  end

  def destroy
    @feed = Feed.find(params[:feed_id])
    @comment = @feed.comments.find(params[:id])
    @comment.destroy
    @user = current_user

    redirect_to user_feed_path(@user.id)
  end
end
 
# Help:

# class CommentsController < ApplicationController
#   def create
#     @post = Post.find(params[:post_id])
#     @comment =  @post.comments.create(params[:comment].permit(:name, :body))

#     if user_signed_in?
#       @userEmail = current_user.email

#       @choppedEmail = @userEmail.slice(0...(@userEmail.index('@')))
#       @comment.update_attribute(:name, @choppedEmail)

#       # @comment.update_attribute(:name, @userEmail)
#     end

#     redirect_to post_path(@post)
#   end

#   def destroy
#     @post = Post.find(params[:post_id])
#     @comment = @post.comments.find(params[:id])
#     @comment.destroy

#     redirect_to post_path(@post)
#   end
# end
