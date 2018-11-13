require 'test_helper'

class ArtistHasSponsorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_has_sponsor = artist_has_sponsors(:one)
  end

  test "should get index" do
    get artist_has_sponsors_url, as: :json
    assert_response :success
  end

  test "should create artist_has_sponsor" do
    assert_difference('ArtistHasSponsor.count') do
      post artist_has_sponsors_url, params: { artist_has_sponsor: { Artist_id: @artist_has_sponsor.Artist_id, Sponsor_id: @artist_has_sponsor.Sponsor_id, as_description: @artist_has_sponsor.as_description } }, as: :json
    end

    assert_response 201
  end

  test "should show artist_has_sponsor" do
    get artist_has_sponsor_url(@artist_has_sponsor), as: :json
    assert_response :success
  end

  test "should update artist_has_sponsor" do
    patch artist_has_sponsor_url(@artist_has_sponsor), params: { artist_has_sponsor: { Artist_id: @artist_has_sponsor.Artist_id, Sponsor_id: @artist_has_sponsor.Sponsor_id, as_description: @artist_has_sponsor.as_description } }, as: :json
    assert_response 200
  end

  test "should destroy artist_has_sponsor" do
    assert_difference('ArtistHasSponsor.count', -1) do
      delete artist_has_sponsor_url(@artist_has_sponsor), as: :json
    end

    assert_response 204
  end
end
