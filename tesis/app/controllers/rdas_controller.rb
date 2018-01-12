class RdasController < ApplicationController

  # GET /rdas
  # GET /rdas.json
  def index
    @rdas = Rda.all
  end

  # GET /resultados_de_aprendizajes/1
  # GET /resultados_de_aprendizajes/1.json
  def show
  	puts "Entré a shoow"
  	@rda = Rda.find(params[:id])
  	@programas = Programa.all
  	@flag = 1 # Para marcar una diferencia entre quien invoca al form_html
  end

  # GET /resultados_de_aprendizajes/new
  def new
    @rda = Rda.new
    @programas = Programa.all
  end

  # GET /resultados_de_aprendizajes/1/edit
  def edit
  	@rda = Rda.find(params[:id])
  	@programas = Programa.all
  end

  # POST /resultados_de_aprendizajes
  # POST /resultados_de_aprendizajes.json
  def create
    @rda = Rda.new(rda_params)
    respond_to do |format|
      if @rda.save
        format.html { redirect_to @rda, notice: 'Resultados de aprendizaje fue creado existosamente' }
        format.json { render :show, status: :created, location: @rda}
      else
        format.html { render :new }
        format.json { render json: @rda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resultados_de_aprendizajes/1
  # PATCH/PUT /resultados_de_aprendizajes/1.json
  def update
    respond_to do |format|
	  @rda = Rda.find(params[:id])
      if @rda.update(rda_params)
        format.html { redirect_to @rda, notice: 'Resultados de aprendizaje exitosamente actualizado' }
        format.json { render :show, status: :ok, location: @rda }
      else
        format.html { render :edit }
        format.json { render json: @rda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resultados_de_aprendizajes/1
  # DELETE /resultados_de_aprendizajes/1.json
  def destroy
    @rda.destroy
    respond_to do |format|
      format.html { redirect_to rdas_url, notice: 'Resultados de aprendizaje fueron exitosamente eliminados' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rda
      @rda = Rda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rda_params
      params.require(:rda).permit(:descripcion,:programa_id)
    end
end
