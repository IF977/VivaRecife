class CreateAcidentes < ActiveRecord::Migration[5.1]
  def change
    create_table :acidentes do |t|
      t.string :bairro
      t.string :quantVitimas
      t.date :data

      t.timestamps
    end
  end
end
