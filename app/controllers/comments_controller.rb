class CommentsController < ApplicationController
    def create
    comment = Comment.new 
    comment.content = params[:input_content] 
    comment.review_id = params[:review_id]
    comment.save
    redirect_to "/reviews/#{comment.review_id}"
  end
  
  def destory
    comment = Comment.find params[:id]
    comment.destroy
    redirect_to "/reviews/#{comment.review_id}"
  end

end
