require 'test_helper'

class JobOportunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_oportunity = job_oportunities(:one)
  end

  test "should get index" do
    get job_oportunities_url, as: :json
    assert_response :success
  end

  test "should create job_oportunity" do
    assert_difference('JobOportunity.count') do
      post job_oportunities_url, params: { job_oportunity: { Sponsor_id: @job_oportunity.Sponsor_id, jo_date: @job_oportunity.jo_date, jo_description: @job_oportunity.jo_description, jo_title: @job_oportunity.jo_title } }, as: :json
    end

    assert_response 201
  end

  test "should show job_oportunity" do
    get job_oportunity_url(@job_oportunity), as: :json
    assert_response :success
  end

  test "should update job_oportunity" do
    patch job_oportunity_url(@job_oportunity), params: { job_oportunity: { Sponsor_id: @job_oportunity.Sponsor_id, jo_date: @job_oportunity.jo_date, jo_description: @job_oportunity.jo_description, jo_title: @job_oportunity.jo_title } }, as: :json
    assert_response 200
  end

  test "should destroy job_oportunity" do
    assert_difference('JobOportunity.count', -1) do
      delete job_oportunity_url(@job_oportunity), as: :json
    end

    assert_response 204
  end
end
