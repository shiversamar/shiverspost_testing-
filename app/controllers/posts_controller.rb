class PostsController < ApplicationController
  before_action :find_post, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show]


  def index
    @posts = Post.all.order("created_at DESC").paginate(page:params[:page],per_page:8)
  end
  # @post denotes an instance variable and is therefore available to use in our view files(html.erb)

  # find post that we trying to access and we will gonna output that listing of title and body on show.html.erb

  def show
    @post = Post.find(params[:id])
  end


  def new
    # @post = Post.new this action are no longer applicable since we associate the two model the User and Post model that user signed in that make a post
    @post = current_user.posts.build

  end

  # same thing with post it just we passing post params and permit actions since we gonna using it all action just put in private, we dont have template form html to list the title and body instead we will gonna redirect to root_path which is index.html.erb
  def create
    # @post = Post.new(params.require(:post).permit(:title,:body)) not to declared in it since we have a private action
    # @post = Post.new(post_params) this formula need to update since we associate user id model to post model and attack in rails console to associate previous post to current_user
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  def edit
    @post = Post.find(params[:id])
  end


  def update
    if @post.update(params[:post].permit(:title, :body, :image))
      format.html { redirect_to post_path, notice: 'Post was successfully updated.' }
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
      params.require(:post).permit(:title, :body, :image)
    end

    def find_post
      @post = Post.find(params[:id])
    end

end
