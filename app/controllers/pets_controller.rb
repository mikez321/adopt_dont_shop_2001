class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def destroy
    Pet.destroy(params[:id])
    redirect_to "/pets"
  end

end
