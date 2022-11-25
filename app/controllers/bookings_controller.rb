class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.animal = Animal.find(params[:animal_id])
    if @booking.save
      redirect_to bookings_path, notice: "Thanks for your booking"
    else
      render :new, status: :unprocessable_entity
    end
    authorize @booking
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

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id)
  end
end
