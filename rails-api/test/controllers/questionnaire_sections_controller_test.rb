require "test_helper"

class QuestionnaireSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire_section = questionnaire_sections(:one)
  end

  test "should get index" do
    get questionnaire_sections_url, as: :json
    assert_response :success
  end

  test "should create questionnaire_section" do
    assert_difference("QuestionnaireSection.count") do
      post questionnaire_sections_url, params: { questionnaire_section: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show questionnaire_section" do
    get questionnaire_section_url(@questionnaire_section), as: :json
    assert_response :success
  end

  test "should update questionnaire_section" do
    patch questionnaire_section_url(@questionnaire_section), params: { questionnaire_section: {  } }, as: :json
    assert_response :success
  end

  test "should destroy questionnaire_section" do
    assert_difference("QuestionnaireSection.count", -1) do
      delete questionnaire_section_url(@questionnaire_section), as: :json
    end

    assert_response :no_content
  end
end
