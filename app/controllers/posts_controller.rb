class PostsController < ApplicationController
  before_action :find_post, only:[:show, :edit, :update, :destroy]


  def index
    @posts = Post.all.order("created_at DESC")
  end
  # @post denotes an instance variable and is therefore available to use in our view files(html.erb)

  # find post that we trying to access and we will gonna output that listing of title and body on show.html.erb

  def show
    @post = Post.find(params[:id])
  end


  def new
    @post = Post.new
  end

  # same thing with post it just we passing post params and permit actions since we gonna using it all action just put in private, we dont have template form html to list the title and body instead we will gonna redirect to root_path which is index.html.erb
  def create
    # @post = Post.new(params.require(:post).permit(:title,:body))
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  def edit
  end


  def update
    if @post.update(post_params)
      redirect_to post_path
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end



  #post_params could be named anything you want.Just use descriptive name ... like post_params
  private

    def post_params
      params.require(:post).permit(:title, :body)
    end

    def find_post
      @post = Post.find(params[:id])
    end




end
