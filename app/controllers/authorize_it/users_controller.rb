class AuthorizeIt::UsersController < ApplicationController
  respond_to :html, :js, :json

  def index
    @limit = params[:length] == nil? ? 10 : params[:length]
    @offset = params[:start] == nil? ? 0 : params[:start]
    @draw = params[:draw] == nil? ? 1 : params[:draw]
    @total = User.count
    @users = User.limit(@limit).offset(@offset).order('created_at DESC')
    respond_with()
  end


  def create
    #user_params = params[:user]
    #@user = User.create(:first_name => user_params['first_name'], :last_name => user_params['last_name'], :username => user_params['username'], :email => user_params['email'], :admin => user_params['admin'])
    @user.create(user_params)
    #byebug
    if @user.errors.any?
      render 'user_errors'
    else
      @group = Group.find(params[:group_id])
      @user.groups << @group
      render 'create'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
    if @user.errors.any?
      render 'user_errors'
    else
      @group = Group.find(params[:group_id])
      @user.groups << @group
      respond_with()
    end
  end

  def edit
    @user = User.find(params[:id])
    @groups = Group.all
    respond_with()
  end

  def new
    @user = User.new()
    @groups = Group.all
    respond_with()
  end

  def show
    @user = User.find(params[:id])
    respond_with()
  end

  def delete
    @user = User.find(params[:id])
    respond_with()
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy unless @user.nil?
    if @user.errors.any?
      # display error messages
    else
      @limit = params[:limit] == nil? ? 10 : params[:limit]
      @offset = params[:offset] == nil? ? 0 : params[:offset]
      @users = User.limit(@limit).offset(@offset).order('created_at DESC')
      respond_with()
    end
  end

  private

  def user_params
    params.require(:user).permit('first_name', 'last_name', 'username', 'email', 'department', 'notes', 'admin', 'image_file_path', 'image_content_type', 'image_file_size')
  end

end
