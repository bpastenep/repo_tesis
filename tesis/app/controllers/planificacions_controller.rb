class PlanificacionsController < ApplicationController
  before_action :set_planificacion, only: [:show, :edit, :update, :destroy]

  # GET /planificacions
  # GET /planificacions.json
  def index
    @planificacions = Planificacion.all
  end

  # GET /planificacions/1
  # GET /planificacions/1.json
  def show
  end

  # GET /planificacions/new
  def new
    @planificacion = Planificacion.new
  end

  # GET /planificacions/1/edit
  def edit
  end

  # POST /planificacions
  # POST /planificacions.json
  def create
    @planificacion = Planificacion.new(planificacion_params)
    respond_to do |format|
      if @planificacion.save
        format.html { redirect_to @planificacion, notice: 'La planificacion fue creada con éxito' }
        format.json { render :show, status: :created, location: @planificacion }
      else
        format.html { render :new }
        format.json { render json: @planificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planificacions/1
  # PATCH/PUT /planificacions/1.json
  def update
    respond_to do |format|
      if @planificacion.update(planificacion_params)
        format.html { redirect_to @planificacion, notice: 'La planificacion fue modificada con éxito' }
        format.json { render :show, status: :ok, location: @planificacion }
      else
        format.html { render :edit }
        format.json { render json: @planificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planificacions/1
  # DELETE /planificacions/1.json
  def destroy
    @planificacion.destroy
    respond_to do |format|
      format.html { redirect_to planificacions_url, notice: 'La planificación fue correctamente eliminada' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planificacion
      @planificacion = Planificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planificacion_params
      params.require(:planificacion).permit(:fecha_inicio, :fecha_termino, :cantidad_clases, :programa_id)
    end
end
