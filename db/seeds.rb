# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Curso.create(
	nombre: "Primero"
)
Curso.create(
	nombre: "Segundo"
)
Curso.create(
	nombre: "Tercero"
)
Curso.create(
	nombre: "Cuarto"
)
Curso.create(
	nombre: "Quinto"
)
# Crear Carrera
Carrera.create(
	nombre: "Analisis de Sistemas"
)
Carrera.create(
	nombre: "Administracion de Empresas"
)
Carrera.create(
	nombre: "Diseño Grafico"
)
Carrera.create(
	nombre: "Derecho"
)

# Crear Facultad----------------------------------

Facultad.create(
	nombre: "Ciencias Artes y Tecnologias"
)

Facultad.create(
	nombre: "Ciencias Administrativas"
)

Facultad.create(
	nombre: "Ciencias Juridicas"
)
# Crear curopor carreras

Cursoporcarrera.create(
	curso_id:  1,
	carrera_id: 1,
	facultad_id: 1,
	semestre:"Primero",
	cantidadalumno: 10 
)
Cursoporcarrera.create(
	curso_id:  2,
	carrera_id: 2,
	facultad_id: 2,
	semestre:"Primero",
	cantidadalumno: 15 
)
Cursoporcarrera.create(
	curso_id:  3,
	carrera_id: 4,
	facultad_id: 3,
	semestre:"Primero",
	cantidadalumno: 30 
)
# crear aula 
Aula.create(
	nombre: "11A",
	bloque:"A",
	capacidad: 9, 
	equipamiento: "Pupitre, climatizado con proyector y television Led",
	ocupado: false
)

Aula.create(
	nombre: "1B",
	bloque:"B",
	capacidad: 30, 
	equipamiento: "Laboratorio, climatizado con proyector y television Led",
	ocupado: false

)
Aula.create(
	nombre: "14A",
	bloque:"A",
	capacidad: 20, 
	equipamiento: "Mesa y sillas, climatizado con proyector y television Led",
	ocupado: false
)

# Crear dias 
Diadelasemana.create(
	nombre: "Lunes"
)
Diadelasemana.create(
	nombre: "Martes"
)
Diadelasemana.create(
	nombre: "Miércoles"
)
Diadelasemana.create(
	nombre: "Jueves"
)
Diadelasemana.create(
	nombre: "Viernes"
)