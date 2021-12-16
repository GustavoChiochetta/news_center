class AutoresController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    autores = Autor.all

    render json: autores
  end

  def show
    autor = Autor.find(params[:id])
    
    render json: autor
  end

  def create
    autor = Autor.new(autor_params)

    if autor.save
      render json: autor
    else
      raise json: {errors: autor.errors}
    end
  end

  def update
    autor = Autor.find(params[:id])

    if autor.update(autor_params)
      render json: autor
    else
      raise json: {errors: autor.errors}
    end
  end

  def destroy
    autor = Autor.find(param[:id])

    if autor.destroy
      render json: autor
    else
      render json: {errors: autor.errors}
    end
  end

  private
  def autor_params
    params.require(:autore).permit(:nome, :email)
  end
end
