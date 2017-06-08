class Api::V1::PostController < ApplicationController
  before_action :set_article, only: [:show, :destroy]

  def index
    render json: Article.all
  end

  def create
    @article= Article.create(params_permitted)
    if @article.save
      render json: @article, status: 201
    else
      render json: { errors: @article.errors.full_messages }, status: 422
    end
  end

  def show
    render json: @article = Article.find(params[:id])
  end

  def destroy
    @article.destroy
    render :show, status: :ok
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def params_permitted
    params.permit(:title)
  end

end
