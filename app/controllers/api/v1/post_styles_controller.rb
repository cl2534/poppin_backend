class Api::V1::PostStylesController < ApplicationController
  before_action :find_poststyle, only: [:show, :destroy, :update]
  def index
    @poststyles = PostStyle.all
    render json: { poststyles: PostStyle.all}
  end

  def new
    @poststyle = PostStyle.create
  end

  def show
    # @poststyle = PostStyle.find(params[:id])
    render json: { poststyle: @poststyle}
  end

  def create
    @poststyle = PostStyle.create(poststyle_params)
    render json: {poststyle: @poststyle}
  end

  def update
    # @poststyle = PostStyle.find(params[:id])
    @poststyle.update(poststyle_params)
    if @poststyle.save
      render json: @poststyle, status: :accepted
    else
      render json: { errors: @poststyle.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # @post = post.find(params[:id])
    @poststyle.destroy
    render json: @poststyle, status: :accepted
  end


  private

  def poststyle_params
    params.permit(:post_id, :style_id)
  end

  def find_poststyle
    @poststyle = PostStyle.find(params[:id])
  end
end
