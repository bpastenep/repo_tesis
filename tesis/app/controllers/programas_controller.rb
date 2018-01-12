class ProgramasController < ApplicationController
  before_action :set_programa, only: [:show, :edit, :update, :destroy]

  # GET /programas
  # GET /programas.json
  def index
    @programas = Programa.all
  end

  # GET /programas/1
  # GET /programas/1.json
  def show
  end

  # GET /programas/new
  def new
    @programa = Programa.new
    @rda = RdaGeneral.new
    @programas = Programa.all
  end

#Funcion Insertar una nueva unidad  (Unity)
#  def create_unity 
#    nombre = params[:nombre]
#    descripcion = params[:descripcion]
#    @id_rda = params[:rdas]
#    insercion1 = Unity.create(descripcion: descripcion, nombre: nombre, id_rda: @id_rda.join(" "))
#    puts insercion1 
#    redirect_to action: 'new'
#  end
    #@unidad = Unity.new(params[:descripcion],)
  #Validaciones respecto a los parametros de unidad 
#    if params[:descripcion].nil?
#      puts "Entre a que la descripcion esta vacia"
#      flash[:notice] = "Debe ingresar una descripcion"
#      redirect_to action: :new_unity
 #   end
#    if params[:nombre].nil?
#      puts "Entre a el nombre vacio "
#      flash[:notice] = "Debe ingresar un nombre"
#      redirect_to action: :new_unity
#    end
  

  # GET /programas/1/edit
  def edit
#    @rda = ResultadosDeAprendizaje.all
  end

  # POST /programas
  # POST /programas.json
  def create
    puts "AAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHH"
    puts params[:descripcionNewRda]
    @programa = Programa.new(programa_params)
    respond_to do |format|
      if @programa.save
        format.html { redirect_to @programa, notice: 'Programa fue existosamente creado.' }
        format.json { render :show, status: :created, location: @programa }
        @rdaGeneral = RdaGeneral.new
        @rdaGeneral.descripcion = params[:descripcionNewRda]
        @rdaGeneral.programas_id = @programa.id
      else
        format.html { render :new }
        format.json { render json: @programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programas/1
  # PATCH/PUT /programas/1.json
  def update
    respond_to do |format|
      if @programa.update(programa_params)
        format.html { redirect_to @programa, notice: 'Programa fue exitosamente actualizado' }
        format.json { render :show, status: :ok, location: @programa }
      else
        format.html { render :edit }
        format.json { render json: @programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programas/1
  # DELETE /programas/1.json
  def destroy
    @programa.destroy
    puts "pase el destroy"
    respond_to do |format|
      format.html { redirect_to programas_url, notice: 'Programa fue exitosamente eliminado' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programa
      @programa = Programa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programa_params
      params.require(:programa).permit(:nombre,:version,:descripcion)
    end 
end

