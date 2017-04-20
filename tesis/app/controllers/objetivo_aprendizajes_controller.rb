class ObjetivoAprendizajesController < ApplicationController
  before_action :set_objetivo_aprendizaje, only: [:show, :edit, :update, :destroy]

  # GET /objetivo_aprendizajes
  # GET /objetivo_aprendizajes.json
  def index
    @objetivo_aprendizajes = ObjetivoAprendizaje.all
  end

  # GET /objetivo_aprendizajes/1
  # GET /objetivo_aprendizajes/1.json
  def show
  end

  # GET /objetivo_aprendizajes/new
  def new
    @objetivo_aprendizaje = ObjetivoAprendizaje.new
  end

  # GET /objetivo_aprendizajes/1/edit
  def edit
  end

  # POST /objetivo_aprendizajes
  # POST /objetivo_aprendizajes.json
  def create
    @objetivo_aprendizaje = ObjetivoAprendizaje.new(objetivo_aprendizaje_params)

    respond_to do |format|
      if @objetivo_aprendizaje.save
        format.html { redirect_to @objetivo_aprendizaje, notice: 'Objetivo aprendizaje was successfully created.' }
        format.json { render :show, status: :created, location: @objetivo_aprendizaje }
      else
        format.html { render :new }
        format.json { render json: @objetivo_aprendizaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objetivo_aprendizajes/1
  # PATCH/PUT /objetivo_aprendizajes/1.json
  def update
    respond_to do |format|
      if @objetivo_aprendizaje.update(objetivo_aprendizaje_params)
        format.html { redirect_to @objetivo_aprendizaje, notice: 'Objetivo aprendizaje was successfully updated.' }
        format.json { render :show, status: :ok, location: @objetivo_aprendizaje }
      else
        format.html { render :edit }
        format.json { render json: @objetivo_aprendizaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objetivo_aprendizajes/1
  # DELETE /objetivo_aprendizajes/1.json
  def destroy
    @objetivo_aprendizaje.destroy
    respond_to do |format|
      format.html { redirect_to objetivo_aprendizajes_url, notice: 'Objetivo aprendizaje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objetivo_aprendizaje
      @objetivo_aprendizaje = ObjetivoAprendizaje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objetivo_aprendizaje_params
      params.require(:objetivo_aprendizaje).permit(:objetivo_aprendizaje_id, :descripcion_oa, :topico)
    end
end
