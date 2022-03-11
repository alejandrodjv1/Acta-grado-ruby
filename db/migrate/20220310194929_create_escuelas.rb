class CreateEscuelas < ActiveRecord::Migration[7.0]
  def change
    create_table :escuelas do |t|
      t.string :cod_e
      t.string :nom_e

      t.timestamps
    end
  end
end
