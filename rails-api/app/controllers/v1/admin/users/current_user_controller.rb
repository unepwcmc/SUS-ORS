# frozen_string_literal: true

module V1
  module Admin
    module Users
      class CurrentUserController < V1::Admin::ApplicationController
        respond_to :json

        def show
          render json: { user: current_admin_user }
        end
      end
    end
  end
end
