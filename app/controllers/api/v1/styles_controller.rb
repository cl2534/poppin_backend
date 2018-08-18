class Api::V1::StylesController < ApplicationController
  # before_action :find_style, only: [:update]
  def index
    @styles = Style.all
    render json: { styles: Style.all}
  end

  def new
    @style = Style.create
  end
  # def create
  #    @post = current_style.posts.build(post_params)
  #    if @post.save
  #      render json: { post: @post, comments: @post.comments }, methods: :comment_ids, status: :created, location: @post
  #    else
  #      render json: @post.errors, status: :unprocessable_entity
  #    end
  #  end
  def show
    @style = Style.find(params[:id])
    render json: { style: @style}
  end

  def create
    @style = Style.create(style_params)
    render json: {style: @style}
  end

  def update
    @style = Style.find(params[:id])
    @style.update(style_params)
    if @style.save
      render json: @style, status: :accepted
    else
      render json: { errors: @style.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def style_params
    params.permit(:name, :style_pic_link)
  end

  def find_style
    @style = Style.find(params[:id])
  end
end
