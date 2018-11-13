require 'test_helper'

class ArtistHasTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_has_type = artist_has_types(:one)
  end

  test "should get index" do
    get artist_has_types_url, as: :json
    assert_response :success
  end

  test "should create artist_has_type" do
    assert_difference('ArtistHasType.count') do
      post artist_has_types_url, params: { artist_has_type: { ArtistType: @artist_has_type.ArtistType, Artist_id: @artist_has_type.Artist_id, ah_description: @artist_has_type.ah_description, belongs_to: @artist_has_type.belongs_to } }, as: :json
    end

    assert_response 201
  end

  test "should show artist_has_type" do
    get artist_has_type_url(@artist_has_type), as: :json
    assert_response :success
  end

  test "should update artist_has_type" do
    patch artist_has_type_url(@artist_has_type), params: { artist_has_type: { ArtistType: @artist_has_type.ArtistType, Artist_id: @artist_has_type.Artist_id, ah_description: @artist_has_type.ah_description, belongs_to: @artist_has_type.belongs_to } }, as: :json
    assert_response 200
  end

  test "should destroy artist_has_type" do
    assert_difference('ArtistHasType.count', -1) do
      delete artist_has_type_url(@artist_has_type), as: :json
    end

    assert_response 204
  end
end
