class UsersController < ApplicationController
  require 'httparty'

  rescue_from HTTParty::Error, with: :user_not_found

  def index
    @users = fetch_users
    @user_image_map = {}
    @users.each do |user|
      @user_image_map[user['id']] = fetch_user_image(user['id'])
    end
  end


  def show
    @user = fetch_user(params[:id]) # Implement your method to fetch user details
    @albums = fetch_albums(@user['id']) # Example method to fetch user albums
    @album_details = fetch_album_details(@albums) # Example method to fetch album details
    @user_image = fetch_user_image(@user['id']) # Example method to fetch user image
  end

  def edit
    @user = fetch_user(params[:id])
  rescue StandardError => e
    user_not_found(e)
  end

  def update
    @user = fetch_user(params[:id])
    if @user.update(user_params)
      flash[:success] = "Kullanıcı bilgileri başarıyla güncellendi."
      redirect_to user_path(@user['id'])
    else
      render 'edit'
    end
  end
  def search
    if params[:query].present?
      @users = fetch_users_by_username(params[:query])
      @user_image_map = {}
      @users.each do |user|
        @user_image_map[user['id']] = fetch_user_image(user['id'])
      end
      if @users.empty?
        flash.now[:alert] = "Kullanıcı bulunamadı!"
      end
    else
      @users = fetch_users
      @user_image_map = {}
      @users.each do |user|
        @user_image_map[user['id']] = fetch_user_image(user['id'])
      end
    end
    render :index
  end

  private

  def user_params
    params.permit(:name, :email, :username, :phone, :website)
  end

  def fetch_users
    response = HTTParty.get('https://jsonplaceholder.typicode.com/users')
    JSON.parse(response.body)
  end

  def fetch_user(user_id)
    response = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{user_id}")
    JSON.parse(response.body)
  end

  def fetch_user_image(user_id)
    # Replace with your logic to fetch user image based on user_id
    response = HTTParty.get("https://picsum.photos/id/#{user_id}/info")
    JSON.parse(response.body)
  end

  def fetch_users_by_username(username)
    response = HTTParty.get("https://jsonplaceholder.typicode.com/users?username=#{username}")
    JSON.parse(response.body)
  end

  def fetch_albums(user_id)
    response = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{user_id}/albums")
    JSON.parse(response.body)
  end

  def fetch_album_details(albums)
    album_details = []
    albums.each do |album|
      response = HTTParty.get("https://jsonplaceholder.typicode.com/albums/#{album['id']}/photos")
      album['photos'] = JSON.parse(response.body)
      album_details << album
    end
    album_details
  end

  def update_user(user_id, user_data)
    response = HTTParty.put("https://jsonplaceholder.typicode.com/users/#{user_id}", body: user_data.to_json, headers: { 'Content-Type' => 'application/json' })
    response.success?
  end

  def user_not_found(error = nil)
    flash[:alert] = "Kullanıcı bulunamadı."
    redirect_to root_path
  end
end
