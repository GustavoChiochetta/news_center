class Noticia < ApplicationRecord
  belongs_to :autor, class_name: 'Autor', foreign_key: 'autores_id', optional: false
end
