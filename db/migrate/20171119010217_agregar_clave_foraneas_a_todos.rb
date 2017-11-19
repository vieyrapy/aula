class AgregarClaveForaneasATodos < ActiveRecord::Migration[5.1]
  def change

  	remove_column :asignaraulas, :dia_id, :integer
  	add_column :asignaraulas, :diadelasemana_id, :integer

  	add_foreign_key(:cursoporcarreras, :cursos)
  	add_foreign_key(:cursoporcarreras, :carreras)
  	add_foreign_key(:cursoporcarreras, :facultades)

  	add_foreign_key(:asignaraulas, :aulas)
  	add_foreign_key(:asignaraulas, :cursoporcarreras)
  	add_foreign_key(:asignaraulas, :diadelasemanas)

  end
end
