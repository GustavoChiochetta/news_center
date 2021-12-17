class ChangeForeignKeyAndTableNameForNoticias < ActiveRecord::Migration[6.1]
  def change
    rename_table :noticia, :noticias
    rename_column :noticias, :autores_id, :autor_id
  end
end
