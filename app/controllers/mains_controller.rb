class MainsController < ApplicationController
  def index
    @index_Posts = Post.all
  end

  def create
    new_Post = Post.new(params_post_permit)
    new_Post.save
    redirect_to mains_path
  end


  private 

  def params_post_permit
    params.require(:post).permit(:title, :contact)
  end  

end
