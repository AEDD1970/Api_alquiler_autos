class UsersController < ApplicationController
  before_action :authenticate_user, only: [:index]

  def index
    render json: {status: 200, msg: 'Autenticado'}
  end

  def  create
    @usuarios = User.new(user_params)
    if @usuarios.save

      render json: @usuarios, status: :created, location: @usuarios, notice: 'el usuario esta administrador'
    else
      render json: @usuarios.errors, status: :unprocessable_entity
    end

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cliente
    @usuarios = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.permit(:username, :emailadmin, :password)
  end

end
