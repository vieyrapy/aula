class CreateAulas < ActiveRecord::Migration[5.1]
  def change
    create_table :aulas do |t|
      t.string :nombre
      t.string :bloque
      t.integer :capacidad
      t.string :equipamiento
      t.boolean :ocupado

      t.timestamps
    end
  end
end
