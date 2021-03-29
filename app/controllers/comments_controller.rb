class CommentsController < ApplicationController
before_action :authenticate_user!
before_action :set_comments, only: [:edit, :update, :show, :destroy]
before_action :set_article, except: [:new]

  def create
    @comment = Comment.create(comment_params)
    @comment.article = @article
    @comment.user = current_user
    
    respond_to do |format|
      if @comment.save
        format.html {redirect_to @article }
        format.js #render create.js.erb
      else 
        format.html {redirect_to @article, notice: @comment.errors.full_messages}
        format.js
      end
    end
  end

    

  def destroy
    @comment = @article.comments.find(params[:id])
    @coment.destroy
    redirect_to @article
  end


private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_comments
    @comment = Comments.find(params[:comment_id])
  end

  def comment_params
    params.require(:comment).permit(:body, :article_id)
  end

end