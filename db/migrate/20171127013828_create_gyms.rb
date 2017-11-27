class CreateGyms < ActiveRecord::Migration[5.1]
  def change
    create_table :gyms do |t|
      t.string :nome
      t.string :bairro
      t.string :endereco
      t.string :fone
      t.string :horario
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
