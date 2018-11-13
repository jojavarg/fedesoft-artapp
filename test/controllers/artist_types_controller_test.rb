require 'test_helper'

class ArtistTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_type = artist_types(:one)
  end

  test "should get index" do
    get artist_types_url, as: :json
    assert_response :success
  end

  test "should create artist_type" do
    assert_difference('ArtistType.count') do
      post artist_types_url, params: { artist_type: { at_description: @artist_type.at_description } }, as: :json
    end

    assert_response 201
  end

  test "should show artist_type" do
    get artist_type_url(@artist_type), as: :json
    assert_response :success
  end

  test "should update artist_type" do
    patch artist_type_url(@artist_type), params: { artist_type: { at_description: @artist_type.at_description } }, as: :json
    assert_response 200
  end

  test "should destroy artist_type" do
    assert_difference('ArtistType.count', -1) do
      delete artist_type_url(@artist_type), as: :json
    end

    assert_response 204
  end
end
