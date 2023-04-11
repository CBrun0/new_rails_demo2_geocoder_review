class BookingsController < ApplicationController
  before_action :set_flat, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.flat = @flat
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:startbook_time, :endbook_time)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
