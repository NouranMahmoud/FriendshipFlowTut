class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Friend successfully added."
      redirect_to root_url
    else
      flash[:error] = "Can't add this friend!"
      redirect_to root_url
    end
  end

  def destroy
    @friendship = current_user.friendships.find_by(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship"
    redirect_to root_url
  end
end
