Extension: CarreraPaciente
Id: CarreraPaciente
Title: "Carrera del Paciente"
Description: "Nombre de la carrera a la cual pertenece el paciente"
* ^context.type = #element
* ^context.expression = #Paciente

* valueString 1..1

//* url "http://example.org/StructureDefinition/CarreraPaciente" MS

Extension: ApellidoMaterno
Id: ApellidoMaterno
Title: "Apellido Materno del Paciente"
Description: "Apellido Materno del Paciente"
* ^context.type = #element
* ^context.expression = #Paciente

* valueString 1..1
//* url "http://example.org/StructureDefinition/ApellidoMaterno" MS