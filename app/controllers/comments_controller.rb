class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments, each_serializer: Comments::IndexSerializer, status: :ok
  end
end
