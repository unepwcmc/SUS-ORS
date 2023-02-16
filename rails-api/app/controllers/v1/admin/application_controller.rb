# frozen_string_literal: true

module V1
  module Admin
    class ApplicationController < ActionController::API
      # @see https://stackoverflow.com/a/35985101/1090438
      include ActionController::MimeResponds

      before_action :authenticate_admin_user!
      before_action :underscore_params!

      respond_to :json

      private

      def underscore_params!
        params.deep_transform_keys!(&:underscore)
      end
    end
  end
end
