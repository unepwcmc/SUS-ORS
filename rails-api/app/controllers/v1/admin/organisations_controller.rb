module V1
  module Admin
    class OrganisationsController < ApplicationController
      before_action :set_organisation, only: %i[ show update destroy ]

      # GET /organisations
      # GET /organisations.json
      def index
        @organisations = Organisation.all
      end

      # GET /organisations/1
      # GET /organisations/1.json
      def show
      end

      # POST /organisations
      # POST /organisations.json
      def create
        @organisation = Organisation.new(organisation_params)

        if @organisation.save
          render :show, status: :created, location: v1_admin_organisations_url(@organisation)
        else
          render json: @organisation.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /organisations/1
      # PATCH/PUT /organisations/1.json
      def update
        if @organisation.update(organisation_params)
          render :show, status: :ok, location: v1_admin_organisations_url(@organisation)
        else
          render json: @organisation.errors, status: :unprocessable_entity
        end
      end

      # DELETE /organisations/1
      # DELETE /organisations/1.json
      def destroy
        @organisation.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_organisation
          @organisation = Organisation.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def organisation_params
          params.permit(:name_short, :name_long, :url)
        end
    end
  end  
end
