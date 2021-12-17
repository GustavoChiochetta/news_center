class Noticia < ApplicationRecord
  self.table_name = 'noticias'
  belongs_to :autor, class_name: 'Autor', foreign_key: 'autor_id', optional: false
end
