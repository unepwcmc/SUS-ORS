module V1
  module Admin
    class QuestionnairesController < ApplicationController
      before_action :get_mea
      before_action :set_questionnaire, only: %i[ show update destroy ]

      # GET /questionnaires
      # GET /questionnaires.json
      def index
        @questionnaires = @mea.questionnaires
      end

      # GET /questionnaires/1
      # GET /questionnaires/1.json
      def show
      end

      # POST /questionnaires
      # POST /questionnaires.json
      def create
        @questionnaire = Questionnaire.new(questionnaire_params)

        if @questionnaire.save
          render :show, status: :created, location: v1_admin_questionnaires_url
        else
          render json: @questionnaire.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /questionnaires/1
      # PATCH/PUT /questionnaires/1.json
      def update
        if @questionnaire.update(questionnaire_params)
          render :show, status: :ok, location: @questionnaire
        else
          render json: @questionnaire.errors, status: :unprocessable_entity
        end
      end

      # DELETE /questionnaires/1
      # DELETE /questionnaires/1.json
      def destroy
        @questionnaire.destroy
      end

      private

        def get_mea
          @mea = Mea.find(params[:mea_id])
        end

        # Use callbacks to share common setup or constraints between actions.
        def set_questionnaire
          @questionnaire = @mea.questionnaires.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def questionnaire_params
          params.permit(:title, :version, :mea_id, :active, :status_id, :num_response, :is_template)
        end
    end
  end
end    
