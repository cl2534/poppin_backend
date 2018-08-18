class Api::V1::UsersController < ApplicationController
  # before_action :find_user, only: [:update]
  def index
    @users = User.all
    render json: { users: User.all}
  end

  def new
    @user = User.create
  end
  # def create
  #    @post = current_user.posts.build(post_params)
  #    if @post.save
  #      render json: { post: @post, comments: @post.comments }, methods: :comment_ids, status: :created, location: @post
  #    else
  #      render json: @post.errors, status: :unprocessable_entity
  #    end
  #  end
  def show
    @user = User.find(params[:id])
    render json: { user: @user}
  end

  def create
    @user = User.create(user_params)
    render json: {user: @user}
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.permit(:name, :profile_img_link)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
