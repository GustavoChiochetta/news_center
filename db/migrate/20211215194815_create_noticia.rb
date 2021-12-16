class CreateNoticia < ActiveRecord::Migration[6.1]
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.text :texto
      t.references :autores, null: false, foreign_key: true

      t.timestamps
    end
  end
end
