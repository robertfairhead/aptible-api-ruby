module Aptible
  module Api
    class App < Resource
      belongs_to :account
      belongs_to :current_configuration
      belongs_to :current_image
      embeds_one :last_operation
      has_many :configurations
      has_many :images
      has_many :operations
      embeds_many :services

      field :id
      field :handle
      field :git_repo
      field :created_at, type: Time
      field :updated_at, type: Time
      field :status

      def provisioned?
        status == 'provisioned'
      end
    end
  end
end
