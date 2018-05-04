class CitiesController < ApplicationController
  def new
  	@city = City.new
  end

  def show
  	@city = City.find(params[:id])
  end

  def edit
  	@city = City.find(params[:id])
  end

  def create
  	@city = City.new(city_params)
  	if @city.save
  		redirect_to @city
  		flash[:notice] = "City was succsessfully created"
  	else
  		render :new
  		flash[:alert] = "Couldn't create city"
  	end
  end

  def update
  	if @city.update(city_params)
  		redirect_to @city
  		flash[:notice] = "City was succsessfully update"
  	else
  		redirect_to @city
  		flash[:alert] = "Couldn't update city"
  	end
  end

  private

  def city_params
  	params.require(:city).permit(:name, :province_id)
  end
end
