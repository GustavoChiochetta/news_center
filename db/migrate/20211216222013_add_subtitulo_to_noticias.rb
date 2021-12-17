class AddSubtituloToNoticias < ActiveRecord::Migration[6.1]
  def change
    add_column :noticias, :subtitulo, :string
  end
end
