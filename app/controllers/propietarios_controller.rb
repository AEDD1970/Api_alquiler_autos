class PropietariosController < ApplicationController
  before_action :set_propietario, only: [:show, :edit, :update, :destroy]

  # GET /propietarios
  # GET /propietarios.json
  def index
    @propietario = Propietario.all.select(:id_auto, :cedula, :tarjeta, :licencia, :email, :telefono, :direccion)
    render json: @propietario
  end

  # GET /propietarios/1
  # GET /propietarios/1.json
  def show
    render json: @propietario
  end

  # GET /propietarios/new
  def new
    @propietario = Propietario.new
  end

  # GET /propietarios/1/edit
  def edit
  end

  # POST /propietarios

  # POST /propietarios.json
  def create
    @propietario = Propietario.new(product_params)

    if @propietario.save
      render json: @propietario, status: :created, location: @propietario, notice: 'Propietario was successfully create.'
    else
      render json: @propietario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /propietarios/1
  # PATCH/PUT /propietarios/1.json
  def update
    if @propietario.update(propietario_params)
      render json: @propietario
    else
      render json: @propietario.errors, status: :unprocessable_entity
    end
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propietario
      @propietario = Propietario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propietario_params
      params.require(:propietario).permit(:id_auto, :cedula, :tarjeta, :licencia, :email, :telefono, :direccion)
    end
end
