require 'graphql'
require_relative 'base_object'
require_relative 'choice'

module Types
  class DecisionPoint < Types::BaseObject
    description 'A point where you must make a choice'

    field :id, ID, null: false
    field :choices, [Types::Choice], null: false
    field :description, String, null: false
  end
end
