class Api::V1::CategoriesController < ApplicationController
  before_action :find_category, only: [ :salons ]

  def index
    render json: Category.all
  end

  def show
    render json: Category.find_by(id: params[:id])
  end

  def salons
    render json: @category.salons
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end
end