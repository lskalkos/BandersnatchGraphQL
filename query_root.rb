require 'graphql'
require_relative './types/decision_point'

class QueryRoot < GraphQL::Schema::Object
  description 'The query root of the schema'

  field :decision_points, [Types::DecisionPoint], null: false do
    description 'Get the decision points in Bandersnatch'
  end

  def decision_points
    DecisionPoint.all
  end
end

