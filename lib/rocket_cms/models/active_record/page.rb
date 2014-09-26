module RocketCMS
  module Models
    module ActiveRecord
      module Page
        extend ActiveSupport::Concern
        extend FriendlyId

        included do
          friendly_id :name, use: [:slugged, :finders]
          has_paper_trail
          validates_lengths_from_database, only: [:name, :title, :content, :excerpt, :h1, :keywords, :robots, :og_title, :regexp, :redirect, :fullpath]
        end
      end
    end
  end
end

