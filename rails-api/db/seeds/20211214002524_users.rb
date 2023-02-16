# frozen_string_literal: true

users = YAML.load_file(Rails.root.join('db/data/users.yml'))

User.create!(users.map(&:deep_symbolize_keys))
