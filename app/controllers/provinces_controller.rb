class ProvincesController < ApplicationController
  def new
  	@province = Province.new
  end

  def show
  	@province = Province.find(params[:id])
  end

  def edit
  	@province = Province.find(params[:id])
  end

  def create
  	@province = Province.new(province_params)
  	if @province.save
  		redirect_to @province
  		flash[:notice] = "Province was successfully created"
  	else
  		render :new
  		flash[:alert] = "Could not create Province"
  	end
  end

  def update
  	if @province.update(province_params)
  		redirect_to @province
  		flash[:notice] = "Province was successfully updated"
  	else
  		render :new
  		flash[:alert] = "Could not update Province"
  	end
  end

  private

  def province_params
  	params.require(:province).permit(:name)
  end
end
