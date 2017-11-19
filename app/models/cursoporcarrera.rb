class Cursoporcarrera < ApplicationRecord
	belongs_to :curso
	belongs_to :carrera
	belongs_to :facultad


	has_many :asignaraulas
end
