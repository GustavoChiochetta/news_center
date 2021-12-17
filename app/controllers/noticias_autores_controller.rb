class NoticiasAutoresController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    noticia = NoticiasAutoresService.new(params).create_noticia
    render json: noticia
  end

  def show
    noticia = NoticiasAutoresService.new(params).get_noticia
    render json: noticia
  end
end
