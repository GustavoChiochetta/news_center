class NoticiasAutoresService
  def initialize(params)
    @params = params
  end

  def create_noticia
    Noticia.transaction do
      autor = Autor.new(autor_params(@params))
      autor.save
      noticia = Noticia.new(noticia_params(@params, autor.id))
      noticia.save
      noticia
    end
  end

  def get_noticia
    noticia = Noticia.find(@params[:id])
    {
      noticia: noticia,
      autor: noticia.autor
    }
  end

  private

  def noticia_params(params, autor_id)
    {
      titulo: params[:titulo],
      subtitulo: params[:subtitulo],
      texto: params[:texto],
      autor_id: autor_id
    }
  end

  def autor_params(params)
    {
      nome: params[:nome],
      email: params[:email]
    }
  end
end