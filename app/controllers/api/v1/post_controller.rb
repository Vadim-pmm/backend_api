class Api::V1::PostController < ApplicationController

  def index
    render json: Article.all
  end

end
