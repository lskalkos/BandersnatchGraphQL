require 'graphql'
require_relative 'base_object'

module Types
  class Choice < Types::BaseObject
    description 'A choice made'

    field :id, ID, null: false
    field :name, String, null: false
    field :beginning_decision_point, 'Types::DecisionPoint', null: false
    field :ending_decision_point, 'Types::DecisionPoint', null: false
  end
end


