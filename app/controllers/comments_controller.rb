class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path(@post) }
      else
        format.html { redirect_to post_path(@post), notice: '投稿できませんでした...' }
      end
    end
  end

  private
  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:content)
  end
end
