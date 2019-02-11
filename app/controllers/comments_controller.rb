class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments, each_serializer: Comments::IndexSerializer, status: :ok
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment, serializer: Comments::CreateSerializer, status: :ok
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text_body, :user_id, :event_id)
  end
end
