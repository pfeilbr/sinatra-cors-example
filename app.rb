require 'sinatra'
require 'json'

before do
   content_type :json    
   headers 'Access-Control-Allow-Origin' => '*', 
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST', 'PUT'],
            'Access-Control-Allow-Headers' => 'Content-Type'   
end

set :protection, false

options '/movie' do
    200
end

get '/movie' do
  { result: "Back to the Future" }.to_json
end

post '/movie' do
  { result: params[:movie] }.to_json
end
