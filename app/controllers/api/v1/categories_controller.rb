class Api::V1::CategoriesController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :find_category, only: [ :salons ]
  
  def index
    render json: Category.all
  end

   def show
    render json: Category.find_by(id: params[:id])
  end

  def salons
    salons = @category.salons
    render json: salons
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end
end