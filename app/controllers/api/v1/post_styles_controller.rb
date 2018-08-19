class Api::V1::PostStylesController < ApplicationController
  # before_action :find_poststyle, only: [:update]
  def index
    @poststyles = PostStyle.all
    render json: { poststyles: PostStyle.all}
  end

  def new
    @poststyle = PostStyle.create
  end
  # def create
  #    @poststyle = current_poststyle.poststyles.build(poststyle_params)
  #    if @poststyle.save
  #      render json: { poststyle: @poststyle, comments: @poststyle.comments }, methods: :comment_ids, status: :created, location: @poststyle
  #    else
  #      render json: @poststyle.errors, status: :unprocessable_entity
  #    end
  #  end
  def show
    @poststyle = PostStyle.find(params[:id])
    render json: { poststyle: @poststyle}
  end

  def create
    @poststyle = PostStyle.create(poststyle_params)
    render json: {poststyle: @poststyle}
  end

  def update
    @poststyle = PostStyle.find(params[:id])
    @poststyle.update(poststyle_params)
    if @poststyle.save
      render json: @poststyle, status: :accepted
    else
      render json: { errors: @poststyle.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def poststyle_params
    params.permit(:post_id, :style_id)
  end

  def find_poststyle
    @poststyle = PostStyleStyle.find(params[:id])
  end
end
