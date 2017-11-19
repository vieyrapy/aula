class AsignaraulasController < ApplicationController
  before_action :set_asignaraula, only: [:show, :edit, :update, :destroy]

  # GET /asignaraulas
  # GET /asignaraulas.json
  def index
    @asignaraulas = Asignaraula.all
  end

  # GET /asignaraulas/1
  # GET /asignaraulas/1.json
  def show
  end

  # GET /asignaraulas/new
  def new
    @asignaraula = Asignaraula.new
  end

  # GET /asignaraulas/1/edit
  def edit
  end

  # POST /asignaraulas
  # POST /asignaraulas.json
  def create
    @asignaraula = Asignaraula.new(asignaraula_params)

    respond_to do |format|
      if @asignaraula.save
        format.html { redirect_to @asignaraula, notice: 'Asignaraula was successfully created.' }
        format.json { render :show, status: :created, location: @asignaraula }
      else
        format.html { render :new }
        format.json { render json: @asignaraula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignaraulas/1
  # PATCH/PUT /asignaraulas/1.json
  def update
    respond_to do |format|
      if @asignaraula.update(asignaraula_params)
        format.html { redirect_to @asignaraula, notice: 'Asignaraula was successfully updated.' }
        format.json { render :show, status: :ok, location: @asignaraula }
      else
        format.html { render :edit }
        format.json { render json: @asignaraula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignaraulas/1
  # DELETE /asignaraulas/1.json
  def destroy
    @asignaraula.destroy
    respond_to do |format|
      format.html { redirect_to asignaraulas_url, notice: 'Asignaraula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignaraula
      @asignaraula = Asignaraula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignaraula_params
      params.require(:asignaraula).permit(:aula_id, :cursoporcarrera_id, :dia_id)
    end
end
