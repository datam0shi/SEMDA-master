Profile: Paciente
Parent: Patient
Description: "Paciente"
* identifier 1..1 MS
  * ^short = "ID Paciente"
  * ^definition = "Indentificador único del paciente" 
    * use ^short = "Código de tipo de ID"
    * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
    * use = #official
    * value ^short = "Valor del RUN sin puntos y con guión"
    * value 1..1 MS

* name 1..1 MS
  * ^short = "Nombre y apellido del paciente"
  * ^definition = "Nombre y apellido del paciente"
  * family 1..1 MS
    * ^short = "1er Apellido"
    * ^definition = "1er Apellido del paciente"
  * use 1..1 MS
  * use ^short = "Tipo de nombre"
  * use from http://hl7.org/fhir/ValueSet/name-use (required)
  * use = #official
  * given 1..*
    * ^short = "Nombre/s del paciente"
    * ^definition = "Nombre/s del paciente"
* name.extension contains ApellidoMaterno named ApellidoMaterno 0..1 
  * ^short = "Apellido materno"
  * ^definition = "Apellido materno"

* gender 1..1 MS
  * ^short = "Sexo del paciente"
  * ^definition = "Sexo biológico del paciente"
//* gender from http://example.org/ValueSet/SexoNaVS (required)


* birthDate 1..1
  * ^short = "Fecha de nacimiento del paciente"
  * ^definition = "Fecha de nacimiento del paciente" 

* address 0..* MS
* address ^short = "Se definirá la dirección en una línea"
* address ^definition = "Dirección del paciente."
  * line 1..1
    * ^short = "Calle o avenida, numero y casa o depto."
    * ^definition = "Aquí se escribe toda la dirección completa"
* telecom 1..* MS
  * ^short = "Contacto del paciente"
  * ^definition = "Contacto del paciente"
  * system 1..1
    * ^short = "Origen contacto del paciente"
    * ^definition = "Origen contacto del paciente"
  * system from http://hl7.org/fhir/ValueSet/contact-point-system (required)
  * value 1..1
    * ^short = "Contacto del paciente"
    * ^definition = "Contacto del paciente"
  * use 1..1
    * ^short = "Tipo de contacto del paciente"
    * ^definition = "Tipo de contacto del paciente"
  * use from http://hl7.org/fhir/ValueSet/contact-point-use (required)

* extension contains CarreraPaciente named CarreraPaciente 1..1 
  * ^short = "Nombre de la carrera a la cual pertenece el paciente"
  * ^definition = "Nombre de la carrera a la cual pertenece el paciente"