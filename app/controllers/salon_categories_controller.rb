class SalonCategoriesController < ApplicationController
  before_action :find_salon
  before_action :all_categories

  def new
    @saloncategory = SalonCategory.new
  end

  def create
    @saloncategory = SalonCategory.new(salon_category_params)
    @saloncategory.save
    if @saloncategory.save
      redirect_to user_salons_path(current_user.id)
    else
      redirect_to new_salon_salon_category_path
    end
  end

  private

  def find_salon
    @salon = Salon.find_by(params[:id])
  end

  def all_categories
    @categories = Category.all
  end

  def salon_category_params
    params.require(:salon_category).permit(:salon_id, :category_id)
  end
end
