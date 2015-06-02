class MinisterialServantsController < ApplicationController
  before_action :set_ministerial_servant, only: [:show, :edit, :update, :destroy]

  # GET /ministerial_servants
  # GET /ministerial_servants.json
  def index
    @ministerial_servants = MinisterialServant.all
  end

  # GET /ministerial_servants/1
  # GET /ministerial_servants/1.json
  def show
  end

  # GET /ministerial_servants/new
  def new
    @ministerial_servant = MinisterialServant.new
  end

  # GET /ministerial_servants/1/edit
  def edit
  end

  # POST /ministerial_servants
  # POST /ministerial_servants.json
  def create
    @ministerial_servant = MinisterialServant.new(ministerial_servant_params)

    respond_to do |format|
      if @ministerial_servant.save
        format.html { redirect_to @ministerial_servant, notice: 'Ministerial servant was successfully created.' }
        format.json { render :show, status: :created, location: @ministerial_servant }
      else
        format.html { render :new }
        format.json { render json: @ministerial_servant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ministerial_servants/1
  # PATCH/PUT /ministerial_servants/1.json
  def update
    respond_to do |format|
      if @ministerial_servant.update(ministerial_servant_params)
        format.html { redirect_to @ministerial_servant, notice: 'Ministerial servant was successfully updated.' }
        format.json { render :show, status: :ok, location: @ministerial_servant }
      else
        format.html { render :edit }
        format.json { render json: @ministerial_servant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ministerial_servants/1
  # DELETE /ministerial_servants/1.json
  def destroy
    @ministerial_servant.destroy
    respond_to do |format|
      format.html { redirect_to ministerial_servants_url, notice: 'Ministerial servant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ministerial_servant
      @ministerial_servant = MinisterialServant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ministerial_servant_params
      params.require(:ministerial_servant).permit(:person_id, :designation_date, :removal_date)
    end
end
