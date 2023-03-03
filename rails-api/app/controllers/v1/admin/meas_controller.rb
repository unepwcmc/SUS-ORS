module V1
  module Admin
	  class MeasController < ApplicationController
		  before_action :set_mea, only: %i[ show update destroy ]

		  # GET /v1/admin/meas
		  # GET /v1/admin/meas.json
			def index
			  @meas = Mea.all
			end

			# GET /v1/admin/meas/1
			# GET /v1/admin/meas/1.json
			def show
			end

			# POST /v1/admin/meas
			# POST /v1/admin/meas.json
			def create
			  @mea = Mea.new(mea_params)
			  if @mea.save
			    render :show, status: :created, location: v1_admin_meas_url
			  else
			    render json: @mea.errors, status: :unprocessable_entity
			  end
			end

			# PATCH/PUT /v1/admin/meas/1
			# PATCH/PUT /v1/admin/meas/1.json
			def update
			  if @mea.update(mea_params)
			    render :show, status: :ok, location: @mea
			  else
			    render json: @mea.errors, status: :unprocessable_entity
			  end
			end

			# DELETE /v1/admin/meas/1
			# DELETE /v1/admin/meas/1.json
			def destroy
			  @mea.destroy
			end

			private
			# Use callbacks to share common setup or constraints between actions.
			def set_mea
			  @mea = Mea.find(params[:id])
			end

			# Only allow a list of trusted parameters through.
			def mea_params
			  params.permit(:name_short, :name_long, :description, :url, :logo_url)
			end
    end
  end
end