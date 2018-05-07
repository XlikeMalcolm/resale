class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  
  def index
  	@categories = Category.all
  end

  def new
  	@category = Category.new
  end

  def show
  	@category = Category.find(params[:id])
    @adverts = @category.adverts
  end

  def edit
  	@category = Category.find(params[:id])
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
  		redirect_to @category
  		flash[:notice] = "Category successfully created!"
  	else
  		render :new
  		flash[:alert] = "Could not create category"
  	end
  end

  def update
  	if @category.update(category_params)
  		redirect_to @category
  		flash[:notice] = "Category was successfully updates"
  	else
  		render :edit
  		flash[:alert] = "Couldn't update category"
  	end
  end

  def destroy
  	@category.destroy
  	redirect_to categories_url
  	flash[:notice] = "Category was successfully deleted"
  end

  private

  def category_params
  	params.require(:category).permit(:name, :description, :image, :icon)
  end
end
