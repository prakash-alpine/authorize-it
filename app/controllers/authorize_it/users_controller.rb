class AuthorizeIt::UsersController < ApplicationController
  respond_to :html, :js, :json

  def index
    @limit = params[:limit] == nil? ? 10 : params[:limit]
    @offset = params[:offset] == nil? ? 0 : params[:offset]
    @users = User.limit(@limit).offset(@offset).order('created_at DESC')
    respond_with()
  end


  def create
    @user = User.create!(params[:user])
    respond_with()
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
    respond_with()
  end

  def edit
    @user = User.find(params[:id])
    respond_with()
  end

  def new
    @user = User.new()
    respond_with()
  end

  def show
    @user = User.find(params[:id])
    respond_with()
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy unless @user.nil?
    respond_with()
  end

  private

  def user_params
    params.require(:user).permit('first_name', 'last_name', 'username', 'email', 'department', 'notes', 'admin', 'image_file_path', 'image_content_type', 'image_file_size')
  end

end
