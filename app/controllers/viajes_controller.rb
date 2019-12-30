class ViajesController < ApplicationController
  before_action :set_viaje, only: [:show, :edit, :update, :destroy]
  before_action :set_cedula, only: [:create_viaje]
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

  def create_viaje
    #@viaje = Viaje.new(viaje_params)
    #
    #if  @viaje.save
    #  render json:  @viaje, status: :created, location:  @viaje, notice: 'Propietario was successfully create.'
    #else
    #  render json:  @viaje.errors, status: :unprocessable_entity
    #end
    cliente = Cliente.find_by_cedula(params[:cedula])
    if cliente.present?
      attr = cliente.viajes.new({
                                    :id_auto => nil,
                                    :cliente_id => cliente.id,
                                    :tiempo => params[:tiempo],
                                    :distancia => params[:distancia],
                                    :valor => params[:valor]
                                })
      attr.save!
      render json: attr, status: :unprocessable_entity
      puts "el viaje fue creado con exito"
    else
      puts "no hay un empleado registrado con esa cedula"
    end

  end

  # PATCH/PUT /propietarios/1
  # PATCH/PUT /propietarios/1.json
  def update
    if @viaje.update(viaje_params)
      render json: @viaje
    else
      render json: @viaje.errors, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_viaje
    @viaje = Viaje.find(params[:id])
  end

  def set_cedula
    @viaje = Cliente.find_by_cedula(params[:cedula])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def viaje_params
    params.permit(:id_auto, :cliente_id, :tiempo, :distancia, :valor)
  end
end
