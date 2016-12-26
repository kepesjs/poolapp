class MattchesController < ApplicationController
  before_action :set_mattch, only: [:show, :edit, :update, :destroy]

  # GET /mattches
  # GET /mattches.json
  def index
    @mattches = Mattch.all
  end

  # GET /mattches/1
  # GET /mattches/1.json
  def show
  end

  # GET /mattches/new
  def new
    @mattch = Mattch.new
    2.times { @mattch.matchteams.build }
    21.times { @mattch.games.build }

   #@mattch.matchteams.build

  end

  # GET /mattches/1/edit
  def edit
  end

  # POST /mattches
  # POST /mattches.json
  def create
    @mattch = Mattch.new(mattch_params)

    respond_to do |format|
      if @mattch.save
        format.html { redirect_to @mattch, notice: 'Mattch was successfully created.' }
        format.json { render :show, status: :created, location: @mattch }
      else
        format.html { render :new }
        format.json { render json: @mattch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mattches/1
  # PATCH/PUT /mattches/1.json
  def update
    respond_to do |format|
      if @mattch.update(mattch_params)
        format.html { redirect_to @mattch, notice: 'Mattch was successfully updated.' }
        format.json { render :show, status: :ok, location: @mattch }
      else
        format.html { render :edit }
        format.json { render json: @mattch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mattches/1
  # DELETE /mattches/1.json
  def destroy
    @mattch.destroy
    respond_to do |format|
      format.html { redirect_to mattches_url, notice: 'Mattch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mattch
      @mattch = Mattch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mattch_params
      params.require(:mattch).permit(:mattch_date, 
        matchteams_attributes: [:team_id, :mattch_id, :id, :home],
         games_attributes: [:forfeit, :id, :game_number])
    end
end
