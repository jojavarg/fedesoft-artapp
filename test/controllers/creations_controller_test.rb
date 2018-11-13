require 'test_helper'

class CreationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creation = creations(:one)
  end

  test "should get index" do
    get creations_url, as: :json
    assert_response :success
  end

  test "should create creation" do
    assert_difference('Creation.count') do
      post creations_url, params: { creation: { Artist_id: @creation.Artist_id, cr_date: @creation.cr_date, cr_description: @creation.cr_description } }, as: :json
    end

    assert_response 201
  end

  test "should show creation" do
    get creation_url(@creation), as: :json
    assert_response :success
  end

  test "should update creation" do
    patch creation_url(@creation), params: { creation: { Artist_id: @creation.Artist_id, cr_date: @creation.cr_date, cr_description: @creation.cr_description } }, as: :json
    assert_response 200
  end

  test "should destroy creation" do
    assert_difference('Creation.count', -1) do
      delete creation_url(@creation), as: :json
    end

    assert_response 204
  end
end
