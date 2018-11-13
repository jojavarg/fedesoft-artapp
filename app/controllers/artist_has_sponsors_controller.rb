class ArtistHasSponsorsController < ApplicationController
  before_action :set_artist_has_sponsor, only: [:show, :update, :destroy]

  # GET /artist_has_sponsors
  # GET /artist_has_sponsors.json
  def index
    @artist_has_sponsors = ArtistHasSponsor.all
  end

  # GET /artist_has_sponsors/1
  # GET /artist_has_sponsors/1.json
  def show
  end

  # POST /artist_has_sponsors
  # POST /artist_has_sponsors.json
  def create
    @artist_has_sponsor = ArtistHasSponsor.new(artist_has_sponsor_params)

    if @artist_has_sponsor.save
      render :show, status: :created, location: @artist_has_sponsor
    else
      render json: @artist_has_sponsor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artist_has_sponsors/1
  # PATCH/PUT /artist_has_sponsors/1.json
  def update
    if @artist_has_sponsor.update(artist_has_sponsor_params)
      render :show, status: :ok, location: @artist_has_sponsor
    else
      render json: @artist_has_sponsor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artist_has_sponsors/1
  # DELETE /artist_has_sponsors/1.json
  def destroy
    @artist_has_sponsor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_has_sponsor
      @artist_has_sponsor = ArtistHasSponsor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_has_sponsor_params
      params.require(:artist_has_sponsor).permit(:as_description, :Artist_id, :Sponsor_id)
    end
end
