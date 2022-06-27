class FavoritosController < ApplicationController

  def create
    @favoritos = Favorito.create(user_id: current_user.id, salon_id: params[:salon_id])
    @favoritos.save
  end

  def index
    @favoritos = Favorito.where(user_id: current_user.id)
  end

  def destroy
    @favorito = Favorito.find_by(salon_id: params[:salon_id])
    @favorito.destroy
    redirect_to user_favoritos_path(current_user.id), notice: "Favorite salon deleted"
  end

  private 

  def favoritos_params
    params.require(:favorito).permit(:user_id, :salon_id)
  end
end
