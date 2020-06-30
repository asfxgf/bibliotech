class AppartenancesController < ApplicationController
  before_action :set_appartenance, only: [:show, :edit, :update, :destroy]

  # GET /appartenances
  # GET /appartenances.json
  def index
    @appartenances = Appartenance.all
  end

  # GET /appartenances/1
  # GET /appartenances/1.json
  def show
  end

  # GET /appartenances/new
  def new
    @appartenance = Appartenance.new
  end

  # GET /appartenances/1/edit
  def edit
  end

  # POST /appartenances
  # POST /appartenances.json
  def create
    @appartenance = Appartenance.new(appartenance_params)

    respond_to do |format|
      if @appartenance.save
        format.html { redirect_to @appartenance, notice: 'Appartenance was successfully created.' }
        format.json { render :show, status: :created, location: @appartenance }
      else
        format.html { render :new }
        format.json { render json: @appartenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appartenances/1
  # PATCH/PUT /appartenances/1.json
  def update
    respond_to do |format|
      if @appartenance.update(appartenance_params)
        format.html { redirect_to @appartenance, notice: 'Appartenance was successfully updated.' }
        format.json { render :show, status: :ok, location: @appartenance }
      else
        format.html { render :edit }
        format.json { render json: @appartenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appartenances/1
  # DELETE /appartenances/1.json
  def destroy
    @appartenance.destroy
    respond_to do |format|
      format.html { redirect_to appartenances_url, notice: 'Appartenance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appartenance
      @appartenance = Appartenance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appartenance_params
      params.fetch(:appartenance, {})
    end
end
