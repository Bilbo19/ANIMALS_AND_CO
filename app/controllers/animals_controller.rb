class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:animal_id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    if @animal.save
     redirect_to animals_path
    else
      render :new
    end
  end

  def destroy
    @animal.destroy
    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :description, :category, :age, :id, :user_id)
  end
end
