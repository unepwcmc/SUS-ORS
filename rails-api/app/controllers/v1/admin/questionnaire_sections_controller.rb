module V1
  module Admin
    class QuestionnaireSectionsController < ApplicationController
      before_action :get_questionnaire, :get_mea
      before_action :set_questionnaire_section, only: %i[ show update destroy ]

      # GET /questionnaire_sections
      # GET /questionnaire_sections.json
      def index
        @questionnaire_sections = QuestionnaireSection.all
      end

      # GET /questionnaire_sections/1
      # GET /questionnaire_sections/1.json
      def show
      end

      # POST /questionnaire_sections
      # POST /questionnaire_sections.json
      def create
        @questionnaire_section = QuestionnaireSection.new(questionnaire_section_params)

        if @questionnaire_section.save
          render :show, status: :created, location: v1_admin_mea_questionnaire_questionnaire_sections_url(@questionnaire_section)
        else
          render json: @questionnaire_section.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /questionnaire_sections/1
      # PATCH/PUT /questionnaire_sections/1.json
      def update
        if @questionnaire_section.update(questionnaire_section_params)
          render :show, status: :ok, location: v1_admin_mea_questionnaire_questionnaire_sections_url(@questionnaire_section)
        else
          render json: @questionnaire_section.errors, status: :unprocessable_entity
        end
      end

      # DELETE /questionnaire_sections/1
      # DELETE /questionnaire_sections/1.json
      def destroy
        @questionnaire_section.destroy
      end

      private
          def get_mea
            @mea = Mea.find(params[:mea_id])
          end

          def get_questionnaire
            @mea = Mea.find(params[:questionnaire_id])
          end
        # Use callbacks to share common setup or constraints between actions.
        def set_questionnaire_section
          @questionnaire_section = QuestionnaireSection.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def questionnaire_section_params
          params.permit(:parent_id,:questionnaire_id,:section_number)
        end
    end
  end
end  
