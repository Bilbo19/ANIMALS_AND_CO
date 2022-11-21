class BookingController < ApplicationController

  def index
    @booking = Booking.all
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.save
      redirect_to bookings_path
    else
      render :edit
    end
  end
end
