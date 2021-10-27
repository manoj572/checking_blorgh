require_dependency "blorgh/application_controller"

module Blorgh
  class CommentsController < ApplicationController
    def create
      @user = User.find(params[:article_id])
      @comment = @user.comments.create(comment_params)
      flash[:notice] = "Comment has been created!"
      redirect_to articles_path
    end
    
    private
      def comment_params
        params.require(:comment).permit(:text)
      end
    
  end
end
