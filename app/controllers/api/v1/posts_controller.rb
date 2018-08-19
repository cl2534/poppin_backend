class Api::V1::PostsController < ApplicationController
  # before_action :find_post, only: [:update]
  def index
    @posts = Post.all
    render json: { posts: Post.all}
  end

  def new
    @post = Post.create
  end
  # def create
  #    @post = current_post.posts.build(post_params)
  #    if @post.save
  #      render json: { post: @post, comments: @post.comments }, methods: :comment_ids, status: :created, location: @post
  #    else
  #      render json: @post.errors, status: :unprocessable_entity
  #    end
  #  end
  def show
    @post = Post.find(params[:id])
    render json: { post: @post}
  end

  def create
    @post = Post.create(post_params)
    render json: {post: @post}
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def post_params
    params.permit(:name, :user_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
