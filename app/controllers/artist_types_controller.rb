class ArtistTypesController < ApplicationController
  before_action :set_artist_type, only: [:show, :update, :destroy]

  # GET /artist_types
  def index
    @artist_types = ArtistType.all

    render json: @artist_types
  end

  # GET /artist_types/1
  def show
    render json: @artist_type
  end

  # POST /artist_types
  def create
    @artist_type = ArtistType.new(artist_type_params)

    if @artist_type.save
      render json: @artist_type, status: :created, location: @artist_type
    else
      render json: @artist_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artist_types/1
  def update
    if @artist_type.update(artist_type_params)
      render json: @artist_type
    else
      render json: @artist_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artist_types/1
  def destroy
    @artist_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_type
      @artist_type = ArtistType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def artist_type_params
      params.require(:artist_type).permit(:at_description)
    end
end
