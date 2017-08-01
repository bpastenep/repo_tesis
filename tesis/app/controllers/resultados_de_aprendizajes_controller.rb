class ResultadosDeAprendizajesController < ApplicationController
  before_action :set_resultados_de_aprendizaje, only: [:show, :edit, :update, :destroy]

  # GET /resultados_de_aprendizajes
  # GET /resultados_de_aprendizajes.json
  def index
    @resultados_de_aprendizajes = ResultadosDeAprendizaje.all
  end

  # GET /resultados_de_aprendizajes/1
  # GET /resultados_de_aprendizajes/1.json
  def show
  end

  # GET /resultados_de_aprendizajes/new
  def new
    @resultados_de_aprendizaje = ResultadosDeAprendizaje.new
  end

  # GET /resultados_de_aprendizajes/1/edit
  def edit
  end

  # POST /resultados_de_aprendizajes
  # POST /resultados_de_aprendizajes.json
  def create
    @resultados_de_aprendizaje = ResultadosDeAprendizaje.new(resultados_de_aprendizaje_params)

    respond_to do |format|
      if @resultados_de_aprendizaje.save
        format.html { redirect_to @resultados_de_aprendizaje, notice: 'Resultados de aprendizaje was successfully created.' }
        format.json { render :show, status: :created, location: @resultados_de_aprendizaje }
      else
        format.html { render :new }
        format.json { render json: @resultados_de_aprendizaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resultados_de_aprendizajes/1
  # PATCH/PUT /resultados_de_aprendizajes/1.json
  def update
    respond_to do |format|
      if @resultados_de_aprendizaje.update(resultados_de_aprendizaje_params)
        format.html { redirect_to @resultados_de_aprendizaje, notice: 'Resultados de aprendizaje was successfully updated.' }
        format.json { render :show, status: :ok, location: @resultados_de_aprendizaje }
      else
        format.html { render :edit }
        format.json { render json: @resultados_de_aprendizaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resultados_de_aprendizajes/1
  # DELETE /resultados_de_aprendizajes/1.json
  def destroy
    @resultados_de_aprendizaje.destroy
    respond_to do |format|
      format.html { redirect_to resultados_de_aprendizajes_url, notice: 'Resultados de aprendizaje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resultados_de_aprendizaje
      @resultados_de_aprendizaje = ResultadosDeAprendizaje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resultados_de_aprendizaje_params
      params.require(:resultados_de_aprendizaje).permit(:descripcion_resultado)
    end
end
