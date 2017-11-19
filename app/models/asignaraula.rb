class Asignaraula < ApplicationRecord
belongs_to :aula
belongs_to :cursoporcarrera

	def self.asignar_aleatoriamente 
		asignaciones = []
		todos_semestres = Aula.all.shuffle #Desordena el arreglo
		todas_aulas = []
		aulas_asignadas= []
		
		todos_semestres.each_with_index do |semestre, i|
			# se asigna aula a cada uno de los semestres, año de la carrera, facultad y eso no deberían ser datos de asignacion de aula sino que del semestre, 
			# veo que tu diseño de base de datos esta mal, o se, falta pensar un poco mas 

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
	end 
end
