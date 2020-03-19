class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def new
  end

  def create
    Shelter.create(shelter_params)
    redirect_to '/'
  end

  def destroy
    Shelter.destroy(params[:id])
    redirect_to '/'
  end

  def edit
    @shelter = Shelter.find(params[:id])
  end

  def update
    shelter = Shelter.find(params[:id])
    shelter.update({
        name: params[:shelter][:name],
        address: params[:shelter][:address],
        city: params[:shelter][:city],
        state: params[:shelter][:state],
        zip: params[:shelter][:zip]
      })

      redirect_to "/shelters/#{shelter.id}/"
  end

  private
  def shelter_params
    params.permit(:name, :address, :city, :state, :zip)
  end


end
