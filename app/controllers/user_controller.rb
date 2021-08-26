class UserController < ApplicationController

  get "/user/:username" do
    user = User.find_by_username(params[:username])
    user.to_json
  end

  post "/user" do
    user = User.create(params)
    user.to_json
  end

  patch "/user/:id" do 
    user = User.find_by_id(params[:id])
    user.update(params)
    user.to_json
  end

end