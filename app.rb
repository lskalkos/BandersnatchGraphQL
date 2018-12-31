require 'sinatra'
require 'json'
require_relative './config/initialize'
require_relative 'schema'

class BandersnatchApp < Sinatra::Base
  before do
    request.body.rewind
    request_body = request.body.read
    @params = JSON.parse(request_body) unless request_body.empty?
  end

  post '/graphql' do
    result = Schema.execute(
      @params['query'],
      variables: @params['variables'],
      context: { current_user: nil }
    )

    result.to_json
  end
end
