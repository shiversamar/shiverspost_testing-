class CommentsController < ApplicationController
  before_action :find_post
  before_action :find_comment, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

# create action, @post gets post.find(params[:post_id]) and finding comment get @post.comments.create(comments_params)that we have in private, when we create comment we want to have respect to users id since user_id its attribute get the current_user.id


def create
  # creates a comment with respect to the message
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  @comment.user_id = current_user.id
    if @comment.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
end



# to edit to something we need to define it @post get Post.find by params post_id and comments get post.comments available to our view one with corresponding ID


def edit
  @post = Post.find(params[:post_id])
  @comment = @post.comments.find(params[:id])
end

# to update file you passing the value comment and redirect_to "posts#show" with respect with @post

def update
  if @comment.update(comment_params)
    redirect_to post_path(@post)
  else
    render 'edit'
  end
end

def destroy
  @comment.destroy
  redirect_to post_path(@post)
end



  private

    def comment_params
      params.require(:comment).permit(:body)
    end

    def find_post
      @post = Post.find(params[:post_id])
    end

    def find_comment
      @comment = @post.comments.find(params[:id])
    end


end
