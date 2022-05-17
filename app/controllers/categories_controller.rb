class CategoriesController < ApplicationController
  before_action :find_category, :absolute_url, only: [ :salons ]

  def index
    Category.all
  end

  def salons
    @salons = @category.salons
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end 

  def absolute_url
   @url = request.original_fullpath
  end
end
