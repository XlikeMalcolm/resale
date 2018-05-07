class AdvertsController < ApplicationController
  before_action :set_advert, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :controlpanel]
  before_action :correct_user, only: [:edit, :update, :destroy]
  
  def index
  	@adverts = Advert.all
  	fresh_when last_modified: @adverts.maximum(:created_at)
  end

  def show
  	fresh_when @advert
  end

  def new
  	@advert = Advert.new
  end

  def edit
  end

  def create
  	@advert = current_user.adverts.build(advert_params)
  	if @advert.save
  		redirect_to @advert
  		flash[:notice] = "You have successfully posted your Ad."
  	else
  		render :new
  		flash[:alert] = "We couldn't post your ad. Please try again later."
  	end
  end

  def update
  	if @advert.update(advert_params)
  		redirect_to @advert
  		flash[:notice] = "Your post was successfully updated."
  	else
  		redirect_to @advert
  		flash[:alert] = "We couldn't update your ad. Please try again later."
  	end
  end

  def destroy
  	@advert.destroy
  	redirect_to root_url
  	flash[:notice] = "Successfully logged out."
  end

  def controlpanel
  	@adverts = current_user.adverts.all
  end

  private

  def set_advert
  	@advert = Advert.find(params[:id])
  end

  def advert_params
  	params.require(:advert).permit(:category_id, :title, :price, :description, :condition_id, :city_id, :image)
  end

  def correct_user
  	@advert = current_user.adverts.find_by(id: params[:id])
  	redirect_to root_url if @advert.nil?
  end

end
