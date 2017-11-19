class DiadelasemanasController < ApplicationController
  before_action :set_diadelasemana, only: [:show, :edit, :update, :destroy]

  # GET /diadelasemanas
  # GET /diadelasemanas.json
  def index
    @diadelasemanas = Diadelasemana.all
  end

  # GET /diadelasemanas/1
  # GET /diadelasemanas/1.json
  def show
  end

  # GET /diadelasemanas/new
  def new
    @diadelasemana = Diadelasemana.new
  end

  # GET /diadelasemanas/1/edit
  def edit
  end

  # POST /diadelasemanas
  # POST /diadelasemanas.json
  def create
    @diadelasemana = Diadelasemana.new(diadelasemana_params)

    respond_to do |format|
      if @diadelasemana.save
        format.html { redirect_to @diadelasemana, notice: 'Diadelasemana was successfully created.' }
        format.json { render :show, status: :created, location: @diadelasemana }
      else
        format.html { render :new }
        format.json { render json: @diadelasemana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diadelasemanas/1
  # PATCH/PUT /diadelasemanas/1.json
  def update
    respond_to do |format|
      if @diadelasemana.update(diadelasemana_params)
        format.html { redirect_to @diadelasemana, notice: 'Diadelasemana was successfully updated.' }
        format.json { render :show, status: :ok, location: @diadelasemana }
      else
        format.html { render :edit }
        format.json { render json: @diadelasemana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diadelasemanas/1
  # DELETE /diadelasemanas/1.json
  def destroy
    @diadelasemana.destroy
    respond_to do |format|
      format.html { redirect_to diadelasemanas_url, notice: 'Diadelasemana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diadelasemana
      @diadelasemana = Diadelasemana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diadelasemana_params
      params.require(:diadelasemana).permit(:nombre)
    end
end
