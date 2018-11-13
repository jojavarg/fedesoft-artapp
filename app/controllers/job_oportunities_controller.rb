class JobOportunitiesController < ApplicationController
  before_action :set_job_oportunity, only: [:show, :update, :destroy]

  # GET /job_oportunities
  # GET /job_oportunities.json
  def index
    @job_oportunities = JobOportunity.all
  end

  # GET /job_oportunities/1
  # GET /job_oportunities/1.json
  def show
  end

  # POST /job_oportunities
  # POST /job_oportunities.json
  def create
    @job_oportunity = JobOportunity.new(job_oportunity_params)

    if @job_oportunity.save
      render :show, status: :created, location: @job_oportunity
    else
      render json: @job_oportunity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_oportunities/1
  # PATCH/PUT /job_oportunities/1.json
  def update
    if @job_oportunity.update(job_oportunity_params)
      render :show, status: :ok, location: @job_oportunity
    else
      render json: @job_oportunity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_oportunities/1
  # DELETE /job_oportunities/1.json
  def destroy
    @job_oportunity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_oportunity
      @job_oportunity = JobOportunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_oportunity_params
      params.require(:job_oportunity).permit(:jo_title, :jo_description, :jo_date, :Sponsor_id)
    end
end
