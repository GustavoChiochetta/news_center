class CreateAutores < ActiveRecord::Migration[6.1]
  def change
    create_table :autores do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
