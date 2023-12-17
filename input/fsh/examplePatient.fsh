Instance: ejemplo1
Title: "Ejemplo Paciente"
Description: "Ejemplo Paciente"

InstanceOf: Patient
Usage: #example
* meta.profile = "http://example.org/StructureDefinition/Paciente"
* extension.valueString = "Ingeniería Civil Biomédica"
* extension.url = "http://example.org/StructureDefinition/CarreraPaciente"
* identifier.use = #official
* identifier.value = "20132442-3"
* name.use = #official
* name.extension.valueString = "Barría"
* name.extension.url = "http://example.org/StructureDefinition/ApellidoMaterno"
* name.family = "Jofré" 
* name.given = "Tomás"
* telecom.system = #phone 
* telecom.value = "972733212"
* telecom.use = #mobile
* gender = #male
* birthDate = "1998-10-16"
* address.line = "calle siempreviva 123, Valparaiso"
