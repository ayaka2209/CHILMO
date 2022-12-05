class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    @posts = current_user.posts
      if params[:post].present?
        title = params[:post][:title]
        status = params[:post][:status]
      if title.present? && status.present?
        @posts = Post.title_and_status_search(title, status)
      elsif title.present?
        @posts = Post.search_title(title)
      elsif status.present?
        @posts = Post.search_status(status)
      end
    end
  end

  def show
    @comments = @post.comments
    @comment = @post.comments.build
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    # @post = Post.find(params[:id])
    @post = current_user.posts.build(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url, notice: t('notice.create_posts') }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: t('notice.update_posts')}
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: t('notice.delete_posts') }
      format.json { head :no_content }
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:start_time, :remark, :user_id, :title, :status)
  end
end
