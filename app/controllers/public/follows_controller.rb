class Public::FollowsController < ApplicationController
    # フォローするとき
  def create
    @end_user = EndUser.find(params[:end_user_id])
    current_end_user.follow(@end_user)
    redirect_to request.referer
  end
  # フォロー外すとき
  def destroy
    @end_user = EndUser.find(params[:end_user_id])
    current_end_user.unfollow(@end_user)
    redirect_to request.referer
  end

end
