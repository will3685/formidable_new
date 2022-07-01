class CategoriesController < ApplicationController
  before_action :find_category, :absolute_url, only: [ :salons ]

  def salons
    @salons = @category.salons

    @salons.each do |salon|
      @salon = salon
    end

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @salons.geocoded.map do |salon|
      {
        lat: salon.latitude,
        lng: salon.longitude,
        info_window: render_to_string(partial: "info_window", locals: { salon: salon })
      }
    end
  end

  private

  def find_category
    @category = Category.find_by(id: params[:id])
  end 

  def absolute_url
   @url = request.original_fullpath
  end
end
