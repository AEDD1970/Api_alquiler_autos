class ViajesController < ApplicationController
  before_action :set_viaje, only: [:show, :edit, :update, :destroy]

  # GET /viajes
  # GET /viajes.json
  def index
    @viajes = Viaje.all
    render json: @viajes
  end

  # GET /viajes/1
  # GET /viajes/1.json
  def show
  end

  # GET /viajes/new
  def new
    @viaje = Viaje.new
  end

  # GET /viajes/1/edit
  def edit
  end

  # POST /viajes
  # POST /viajes.json

  def create
    @viaje = Product.new(viaje_params)

    if  @viaje.save
      render json:  @viaje, status: :created, location:  @viaje, notice: 'Propietario was successfully create.'
    else
      render json:  @viaje.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /propietarios/1
  # PATCH/PUT /propietarios/1.json
  def update
    if  @viaje.update(viaje_params)
      render json:  @viaje
    else
      render json:  @viaje.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viaje
      @viaje = Viaje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viaje_params
      params.permit(:id_auto, :cedula_id, :tiempo, :distancia, :valor)
    end
end
