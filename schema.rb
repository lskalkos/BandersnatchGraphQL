require 'graphql'
require_relative 'query_root'

class Schema < GraphQL::Schema
  query QueryRoot
end
