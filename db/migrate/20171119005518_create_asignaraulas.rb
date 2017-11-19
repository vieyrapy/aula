class CreateAsignaraulas < ActiveRecord::Migration[5.1]
  def change
    create_table :asignaraulas do |t|
      t.integer :aula_id
      t.integer :cursoporcarrera_id
      t.integer :dia_id

      t.timestamps
    end
  end
end
