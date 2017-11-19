class CreateCursoporcarreras < ActiveRecord::Migration[5.1]
  def change
    create_table :cursoporcarreras do |t|
      t.integer :facultad_id
      t.integer :carrera_id
      t.integer :curso_id
      t.string :semestre
      t.integer :cantidadalumno

      t.timestamps
    end
  end
end
