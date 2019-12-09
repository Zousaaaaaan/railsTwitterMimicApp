class FollowersController < ApplicationController
  before_action :authenticate_user


# フォローするかどうか
  def create
    @follower = Follower.new(user_id: @current_user.id, target_user_id: params[:user_id])
    @follower.save
    redirect_to("/users/#{params[:user_id]}")
  end

  def destroy
    @follower = Follower.find_by(user_id: @current_user.id, target_user_id: params[:user_id])
    @follower.destroy
    redirect_to("/users/#{params[:user_id]}")
  end

  #(redirectが違う。)
#   def create_posts_index
#     @follower = Follower.new(user_id: @current_user.id, target_user_id: params[:target_user_id])
#     @follower.save
#     redirect_to("/posts/index")
#   end
#
#   def destroy_posts_index
#     @follower = Follower.find_by(user_id: @current_user.id, target_user_id: params[:target_user_id])
#     @follower.destroy
#     redirect_to("/posts/index")
#   end
end
