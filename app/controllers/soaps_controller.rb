class SoapsController < ApplicationController
  before_action :set_soap, only: [:show, :edit, :update, :destroy]

  # GET /soaps
  # GET /soaps.json
  def index
    @soaps = Soap.all
  end

  # GET /soaps/1
  # GET /soaps/1.json
  def show
  end

  # GET /soaps/new
  def new
    @soap = Soap.new
  end

  # GET /soaps/1/edit
  def edit
  end

  # POST /soaps
  # POST /soaps.json
  def create
    @director = Director.find(params[:director_id])
    @soaps = @director.soaps.create(soap_params)
    redirect_to director_path(@director)


  end

  # PATCH/PUT /soaps/1
  # PATCH/PUT /soaps/1.json
  def update
    respond_to do |format|
      if @soap.update(soap_params)
        format.html { redirect_to @soap, notice: 'Soap was successfully updated.' }
        format.json { render :show, status: :ok, location: @soap }
      else
        format.html { render :edit }
        format.json { render json: @soap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soaps/1
  # DELETE /soaps/1.json
  def destroy
    @soap.destroy
    respond_to do |format|
      format.html { redirect_to soaps_url, notice: 'Soap was successfully destroyed.' }
      format.json { head :no_content }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soap
      @soap = Soap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soap_params
      params.require(:soap).permit(:soap_name, :soap_age, :director_id)
    end
end
