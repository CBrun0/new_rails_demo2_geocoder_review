class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]
  def index
    @flats = Flat.all
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {flat: flat})
      }
    end
  end

  def show
    @booking = Booking.new
    @flat_coordinates = { lat: @flat.latitude, lng: @flat.longitude }
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
