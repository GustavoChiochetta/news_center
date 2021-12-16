class NoticiasController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    noticias = Noticia.all

    render json: noticias
  end

  def show
    noticia = Noticia.find(params[:id])
    
    render json: noticia
  end

  def create
    noticia = Noticia.new(noticia_params)

    if noticia.save
      render json: noticia
    else
      raise json: {errors: noticia.errors}
    end
  end

  def update
    noticia = Noticia.find(params[:id])

    if noticia.update(noticia_params)
      render json: noticia
    else
      raise json: {errors: noticia.errors}
    end
  end

  def destroy
    noticia = Noticia.find(params[:id])
    if noticia.destroy
      render json: noticia
    else
      render json: {erros: noticia.erros}
    end
  end

  private

  def noticia_params
    params.require(:noticia).permit(:titulo, :texto)
  end
end
