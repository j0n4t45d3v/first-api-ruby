require 'sinatra'
require 'json'
require "sinatra/activerecord"
require './app/model/user'
require './app/controller/user_controller'
require 'dotenv'
Dotenv.load

set :database, {adapter: ENV['ADAPTER_DB'] , database: ENV['URI_DB']}
set :port, ENV['PORT']

before do
  content_type :json
end

get  '/users' do
  users = { users: UserController.find_all }
  users.to_json
end

get  '/users/:id' do
  User.find(params[:id]).to_json
end

post  '/users' do
  req = JSON.parse(request.body.read)#pega o request json e passa para um obj ruby
  UserController.save(req).to_json
end

put  '/users/:id' do
  req = JSON.parse(request.body.read)
  UserController.refresh(params[:id], req).to_json
end

delete  '/users/:id' do
  User.find(params[:id]).delete
  true
end
