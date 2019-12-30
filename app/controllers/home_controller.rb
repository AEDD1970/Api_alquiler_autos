class HomeController < ApplicationController
  before_action :authenticate_user, only: [:auth]

  def index
    render json: { service: 'auth-api', status: 200}
  end

  def auth
    render json: { status: 200, msg: "usted a iniciado seccion como #{current_user.username}"}

  end
end
