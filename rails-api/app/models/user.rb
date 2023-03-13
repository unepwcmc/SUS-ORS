# frozen_string_literal: true

class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  EMAIL_PATTERN = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.freeze

  has_many :resources, inverse_of: %i[created_by updated_by]

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: EMAIL_PATTERN }

  # @see https://www.rubydoc.info/github/plataformatec/devise/Devise/Models
  devise :database_authenticatable,
    # :confirmable,
    :lockable,
    # :omniauthable,
    :recoverable,
    :registerable,
    # :rememberable,
    # :timeoutable,
    # :trackable,
    :validatable,
    :jwt_authenticatable,
    jwt_revocation_strategy: self

  def as_json(*_args)
    {
      id: id,
      first_name: first_name,
      email: email,
      jti: jti,
      created_at: created_at,
      updated_at: updated_at
    }
  end
end
