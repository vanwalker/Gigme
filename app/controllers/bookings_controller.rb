class BookingsController < ApplicationController
  before_action :set_offer, only:[:new, :create]

  def new
    # we need @offer in our `simple_form_for`
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `offer_id` to associate booking with corresponding offer
    @booking.offer = @offer
    if @booking.save
      redirect_to offer_path(@offer), notice: 'Saved!'
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to offer_path(@booking.offer)
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:comment, :place, :offer_id, :user_id, :date_start, :date_end)
  end
end
