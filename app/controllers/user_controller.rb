class UserController < ApplicationController
  
  get "/users" do
    users = User.all
    users.to_json(include: [:trips])
  end

  get "/users/:username" do
    user = User.find_by_username(params[:username])
      if user
        user.to_json(include: [:trips])
      else
        status 401
        { errors: "user doesn't exist" }.to_json
      end
  end

  get "/users/:id/trips" do
    find_user
    @user.to_json(include: [:trips])
  end

  post "/users" do
    user = User.create(params)
    user.to_json
  end

  patch "/users/:id" do 
    find_user
    @user.update(params)
    @user.to_json
  end

  delete "/users/:id" do
    find_user
    @user.destroy
    @user.to_json
  end

  private 
    def find_user
      @user = User.find_by_id(params[:id])
    end


end