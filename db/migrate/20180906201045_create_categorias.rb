class CreateCategorias < ActiveRecord::Migration[5.2]
  def change
    create_table :categorias do |t|
      t.string :peso
      t.string :perfil

      t.timestamps
    end
  end
end
