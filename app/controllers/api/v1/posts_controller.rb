class Api::V1::PostsController < ApplicationController
  before_action :find_post, only: [:update, :destroy]

  def index
    posts = Post.all.includes(:styles).find_by id: params[:id]
    render json: { posts: Post.all }, include:  ['styles']
  end

  def new
    @post = Post.create
  end

  def show
    post = Post.includes(:styles).find_by id: params[:id]
    # @post = Post.find(params[:id])
    render json: post
  end

  def create
    @post = Post.create(post_params)
    render json: {post: @post}
  end

  def update
    # @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    # @post = post.find(params[:id])
    @post.destroy
    render json: @post, status: :accepted
  end


  private

  def post_params
    params.permit(:name, :user_id, :picture_url, :likes, :location, :articles)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
