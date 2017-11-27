class CreateTeatros < ActiveRecord::Migration[5.1]
  def change
    create_table :teatros do |t|
      t.string :nome
      t.string :descricao
      t.string :bairro
      t.string :endereco
      t.string :telefone
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
