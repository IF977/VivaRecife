class CreateFeiras < ActiveRecord::Migration[5.1]
  def change
    create_table :feiras do |t|
      t.string :nome
      t.string :bairro
      t.string :endereco
      t.string :dias
      t.string :horario
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
