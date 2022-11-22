class BookingsController < ApplicationController

  def index
    @booking = Booking.all
    @booking = policicy_scope(Booking)
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    authorize @booking
    @booking = Booking.find(params[:id])
    if @booking.save
      redirect_to bookings_path
    else
      render :edit
    end
  end
end
