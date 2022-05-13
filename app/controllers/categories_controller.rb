class CategoriesController < ApplicationController
  before_action :find_category, only: [ :salons ]

  def salons
    @salons = @category.salons
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end
end