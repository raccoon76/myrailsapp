class ReiteosController < ApplicationController
  before_action :set_reiteo, only: [:show, :edit, :update, :destroy]

  # GET /reiteos
  # GET /reiteos.json
  def index
    @reiteos = Reiteo.all
  end

  # GET /reiteos/1
  # GET /reiteos/1.json
  def show
  end

  # GET /reiteos/new
  def new
    @reiteo = Reiteo.new
  end

  # GET /reiteos/1/edit
  def edit
  end

  # POST /reiteos
  # POST /reiteos.json
  def create
    @reiteo = Reiteo.new(reiteo_params)

    respond_to do |format|
      if @reiteo.save
        format.html { redirect_to @reiteo, notice: 'Reiteo was successfully created.' }
        format.json { render :show, status: :created, location: @reiteo }
      else
        format.html { render :new }
        format.json { render json: @reiteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reiteos/1
  # PATCH/PUT /reiteos/1.json
  def update
    respond_to do |format|
      if @reiteo.update(reiteo_params)
        format.html { redirect_to @reiteo, notice: 'Reiteo was successfully updated.' }
        format.json { render :show, status: :ok, location: @reiteo }
      else
        format.html { render :edit }
        format.json { render json: @reiteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reiteos/1
  # DELETE /reiteos/1.json
  def destroy
    @reiteo.destroy
    respond_to do |format|
      format.html { redirect_to reiteos_url, notice: 'Reiteo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reiteo
      @reiteo = Reiteo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reiteo_params
      params.require(:reiteo).permit(:description)
    end
end
