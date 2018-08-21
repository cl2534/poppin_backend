class Api::V1::StylesController < ApplicationController
  before_action :find_style, only: [:update, :destroy]



  def index
    styles = Style.all.includes(:posts).find_by id: params[:id]
    render json: { styles: Style.all}, include: ['posts']
  end

  def new
    @style = Style.create
  end

  def show
    # @style = Style.find(params[:id])
    style = Style.includes(:posts).find_by id: params[:id]
    render json: style
  end

  def create
    @style = Style.create(style_params)
    render json: {style: @style}
  end

  def update
    # @style = Style.find(params[:id])
    @style.update(style_params)
    if @style.save
      render json: @style, status: :accepted
    else
      render json: { errors: @style.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # @post = post.find(params[:id])
    @style.destroy
    render json: @style, status: :accepted
  end

  private

  def style_params
    params.permit(:name, :style_pic_link)
  end

  def find_style
    @style = Style.find(params[:id])
  end
end
