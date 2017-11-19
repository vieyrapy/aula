class CursoporcarrerasController < ApplicationController
  before_action :set_cursoporcarrera, only: [:show, :edit, :update, :destroy]

  # GET /cursoporcarreras
  # GET /cursoporcarreras.json
  def index
    @cursoporcarreras = Cursoporcarrera.all
  end

  # GET /cursoporcarreras/1
  # GET /cursoporcarreras/1.json
  def show
  end

  # GET /cursoporcarreras/new
  def new
    @cursoporcarrera = Cursoporcarrera.new
  end

  # GET /cursoporcarreras/1/edit
  def edit
  end

  # POST /cursoporcarreras
  # POST /cursoporcarreras.json
  def create
    @cursoporcarrera = Cursoporcarrera.new(cursoporcarrera_params)

    respond_to do |format|
      if @cursoporcarrera.save
        format.html { redirect_to @cursoporcarrera, notice: 'Cursoporcarrera was successfully created.' }
        format.json { render :show, status: :created, location: @cursoporcarrera }
      else
        format.html { render :new }
        format.json { render json: @cursoporcarrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cursoporcarreras/1
  # PATCH/PUT /cursoporcarreras/1.json
  def update
    respond_to do |format|
      if @cursoporcarrera.update(cursoporcarrera_params)
        format.html { redirect_to @cursoporcarrera, notice: 'Cursoporcarrera was successfully updated.' }
        format.json { render :show, status: :ok, location: @cursoporcarrera }
      else
        format.html { render :edit }
        format.json { render json: @cursoporcarrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursoporcarreras/1
  # DELETE /cursoporcarreras/1.json
  def destroy
    @cursoporcarrera.destroy
    respond_to do |format|
      format.html { redirect_to cursoporcarreras_url, notice: 'Cursoporcarrera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cursoporcarrera
      @cursoporcarrera = Cursoporcarrera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cursoporcarrera_params
      params.require(:cursoporcarrera).permit(:facultad_id, :carrera_id, :curso_id, :semestre, :cantidadalumno)
    end
end
