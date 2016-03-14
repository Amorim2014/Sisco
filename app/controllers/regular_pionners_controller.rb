class RegularPionnersController < ApplicationController
  before_action :set_regular_pionner, only: [:show, :edit, :update, :destroy]

  # GET /regular_pionners
  # GET /regular_pionners.json
  def index
    @regular_pionners = RegularPionner.all
  end

  # GET /regular_pionners/1
  # GET /regular_pionners/1.json
  def show
  end

  # GET /regular_pionners/new
  def new
    @regular_pionner = RegularPionner.new
  end

  # GET /regular_pionners/1/edit
  def edit
  end

  # POST /regular_pionners
  # POST /regular_pionners.json
  def create
    @regular_pionner = RegularPionner.new(regular_pionner_params)

    respond_to do |format|
      if @regular_pionner.save
        format.html { redirect_to @regular_pionner, notice: 'Regular pionner was successfully created.' }
        format.json { render :show, status: :created, location: @regular_pionner }
      else
        format.html { render :new }
        format.json { render json: @regular_pionner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regular_pionners/1
  # PATCH/PUT /regular_pionners/1.json
  def update
    respond_to do |format|
      if @regular_pionner.update(regular_pionner_params)
        format.html { redirect_to @regular_pionner, notice: 'Regular pionner was successfully updated.' }
        format.json { render :show, status: :ok, location: @regular_pionner }
      else
        format.html { render :edit }
        format.json { render json: @regular_pionner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regular_pionners/1
  # DELETE /regular_pionners/1.json
  def destroy
    @regular_pionner.destroy
    respond_to do |format|
      format.html { redirect_to regular_pionners_url, notice: 'Regular pionner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regular_pionner
      @regular_pionner = RegularPionner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regular_pionner_params
      params.require(:regular_pionner).permit(:person_id , :designation_date, :removal_date)
    end
end
