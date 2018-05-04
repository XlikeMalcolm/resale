class ConditionsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  
  def index
  	@conditions = Condition.all
  end

  def new
  	@condition = Condition.new
  end

  def show
  	@condition = Condition.find(params[:id])
  end

  def edit
  	@condition = Condition.find(params[:id])
  end

  def create
  	@condition = Condition.new(condition_params)
  	if @condition.save
  		redirect_to @condition
  		flash[:notice] = "Condition successfully created!"
  	else
  		render :new
  		flash[:alert] = "Could not create condition"
  	end
  end

  def update
  	if @condition.update(condition_params)
  		redirect_to @condition
  		flash[:notice] = "Condition was successfully updates"
  	else
  		render :edit
  		flash[:alert] = "Couldn't update condition"
  	end
  end

  def destroy
  	@condition.destroy
  	redirect_to conditions_url
  	flash[:notice] = "Condition was successfully deleted"
  end

  private

  def condition_params
  	params.require(:condition).permit(:name)
  end
end
