class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.create(like_params)
    redirect_to posts_url
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
