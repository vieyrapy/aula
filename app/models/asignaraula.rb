class Asignaraula < ApplicationRecord
belongs_to :aula
belongs_to :cursoporcarrera


	def self.asignar_aleatoriamente 
		asignaciones = []
		todos_cursos = Cursoporcarrera.all.shuffle #Desordena el arreglo
		todas_aulas  = Aula.all.shuffle #Desordena el arreglo
		aulas_asignadas= []
		
		todos_cursos.each_with_index do |semestre, i|
			# se asigna aula a cada uno de los cursos

			#pregunto si es que ya no asigné todas las las aulas y aún queda algun aula disponible para este semestre 
			if aulas_asignadas.size != todas_aulas.size 
				# si hay aula disponible, la tomamos 
				aula_elegida = todas_aulas[i] 
				#asigno 
				asignacion = Asignaraula.new(aula_id: aula_elegida.id, cursoporcarrera_id: semestre.id, diadelasemana_id: 1) 
				#guardo aulas elegidas en aulas asignadas 
				aulas_asignadas << aula_elegida
			end
		end
		asignaciones
	end 
end
