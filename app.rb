require('sinatra')
require('json')

set(:bind, '0.0.0.0')

get '/hello-world' do
  content_type(:json)
  response = {message: "Hello CodeClan!"}
  return response.to_json()
end