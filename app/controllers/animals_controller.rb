class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @animals = policy_scope(Animal)

    @markers = @animals.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        #info_window: render_to_string(partial: "info_window", locals: { animal: animal }),
        image_url: helpers.asset_url("crapeau.jpg"),
      }
    end
  end

  def show
    @animal = Animal.find(params[:id])
    @booking = Booking.new
    authorize @animal
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    if @animal.save
      redirect_to animals_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @animal
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
    authorize @animal
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :description, :category, :age, :prices)
  end
end
