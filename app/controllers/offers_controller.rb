class OffersController < ApplicationController
  before_action :set_offer, only: [:show]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
    @user = current_user
  end

  def show
    set_offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to new_user_offer_path(@offer), notice: 'Saved!'
    else
      render :new
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :availability, :price, :place, :description, :event, :music_style)
  end
end
