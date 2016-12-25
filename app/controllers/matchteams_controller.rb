class MatchteamsController < ApplicationController
  before_action :set_matchteam, only: [:show, :edit, :update, :destroy]

  # GET /matchteams
  # GET /matchteams.json
  def index
    @matchteams = Matchteam.all
  end

  # GET /matchteams/1
  # GET /matchteams/1.json
  def show
  end

  # GET /matchteams/new
  def new
    @matchteam = Matchteam.new
  end

  # GET /matchteams/1/edit
  def edit
  end

  # POST /matchteams
  # POST /matchteams.json
  def create
    @matchteam = Matchteam.new(matchteam_params)

    respond_to do |format|
      if @matchteam.save
        format.html { redirect_to @matchteam, notice: 'Matchteam was successfully created.' }
        format.json { render :show, status: :created, location: @matchteam }
      else
        format.html { render :new }
        format.json { render json: @matchteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matchteams/1
  # PATCH/PUT /matchteams/1.json
  def update
    respond_to do |format|
      if @matchteam.update(matchteam_params)
        format.html { redirect_to @matchteam, notice: 'Matchteam was successfully updated.' }
        format.json { render :show, status: :ok, location: @matchteam }
      else
        format.html { render :edit }
        format.json { render json: @matchteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matchteams/1
  # DELETE /matchteams/1.json
  def destroy
    @matchteam.destroy
    respond_to do |format|
      format.html { redirect_to matchteams_url, notice: 'Matchteam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matchteam
      @matchteam = Matchteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matchteam_params
      params.require(:matchteam).permit(:mattch_id, :team_id, :home)
    end
end
