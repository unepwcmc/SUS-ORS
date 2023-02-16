# frozen_string_literal: true

module V1
  class NavigationController < ApplicationController
    def index
      @navigation = YAML.load_file(Rails.root.join('config/navigation.yml'))

      render json: @navigation
    end
  end
end
