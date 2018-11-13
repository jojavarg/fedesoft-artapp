class ArtistHasTypesController < ApplicationController
  before_action :set_artist_has_type, only: [:show, :update, :destroy]

  # GET /artist_has_types
  def index
    @artist_has_types = ArtistHasType.all

    render json: @artist_has_types
  end

  # GET /artist_has_types/1
  def show
    render json: @artist_has_type
  end

  # POST /artist_has_types
  def create
    @artist_has_type = ArtistHasType.new(artist_has_type_params)

    if @artist_has_type.save
      render json: @artist_has_type, status: :created, location: @artist_has_type
    else
      render json: @artist_has_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artist_has_types/1
  def update
    if @artist_has_type.update(artist_has_type_params)
      render json: @artist_has_type
    else
      render json: @artist_has_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artist_has_types/1
  def destroy
    @artist_has_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_has_type
      @artist_has_type = ArtistHasType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def artist_has_type_params
      params.require(:artist_has_type).permit(:ah_description, :Artist_id, :ArtistType, :belongs_to)
    end
end
