class Autor < ApplicationRecord
    self.table_name = "autores"

    has_one :noticia, class_name: 'Noticia', foreign_key: 'autores_id'
end
