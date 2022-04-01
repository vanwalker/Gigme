class UsersController < ApplicationController
  # before_action :set_user, only: [:show]
  # set callbacks and authentificator! etc etc
  # before_action :authenticate_user!
  # before_action :set_user, only: [:show]

  def show
    set_user
    # my_offers/ my_bookings = all?
  end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to edit_offer(@user)
  #     redirect_to offer(current_user)
  #   else
  #     render :new
  #   end
  # end

  # def destroy
  #   @offer.destroy
  #   # redirect_to
  # end

  private

  def set_user
    @user = User.find_by_id(params[:id])
  end
  # def set_offer
  #   @offer = Offer.find(params[:id])
  # end

  def user_params
    params.require(:user).permit(:musician)
  end
end
