class CreateMuseus < ActiveRecord::Migration[5.1]
  def change
    create_table :museus do |t|
      t.string :nome
      t.string :descricao
      t.string :bairro
      t.string :endereco
      t.string :telefone
      t.string :site
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
