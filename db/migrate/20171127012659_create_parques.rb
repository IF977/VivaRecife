class CreateParques < ActiveRecord::Migration[5.1]
  def change
    create_table :parques do |t|
      t.string :nome
      t.string :tipo
      t.string :bairro
      t.string :endereco
      t.string :area
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
