class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  private
    def params
      params.require(:post).permit(:title, :content)
    end



end
