class PostsController < ApplicationController
  def create
  post = Post.new
  post["body"] = params["body"]
  post["user_id"] = current_user["id"]
  post.save
  redirect_to "/posts"
  
  
  end 
end
