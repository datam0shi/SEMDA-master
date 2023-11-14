CodeSystem:  SexoNaCS
Id:          SexoNaCS
Title:       "CS - Códigos para definir el Sexo de nacimiento del Paciente"
Description: "Terminología de Sexo definido por la Norma Técnica 820"

* ^caseSensitive = true 
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
//* ^date = "2023-06-27T00:00:000-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"

* #01 "HOMBRE" 
* #02 "MUJER" 
* #03 "INTERSEX(INDETERMINADO)"
* #99 "DESCONOCIDO" 

ValueSet:       SexoNaVS
Id:             SexoNaVS
Title:          "VS - Códigos a usar para definir el sexo de nacimiento del Paciente"
Description:    "Códigos válidos de sexo a la hora de nacer definidos en la normativa Chilena"
* ^experimental = true

* codes from system SexoNaCS


CodeSystem:  ComportamientoSuicidaCS
Id:          ComportamientoSuicidaCS
Title:       "CS - Códigos para definir el tipo de comportamiento suicida que ha tenido el paciente"
Description: "Terminología de tipos de comportamiento suicida"

* ^caseSensitive = true 
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
//* ^date = "2023-06-27T00:00:000-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"

* #CS0 "No ha tenido comportamiento suicida" 
* #CS1 "Ideación suicida" 
* #CS2 "Planificación suicida"
* #CS3 "Intento suicida" 

ValueSet:       ComportamientoSuicidaVS
Id:             ComportamientoSuicidaVS
Title:          "VS - Códigos a usar para definir el tipo de comportamiento suicida del Paciente"
Description:    "Códigos válidos de tipo de comportamiento suicida"
* ^experimental = true

* codes from system ComportamientoSuicidaCS

CodeSystem:  ResultadoIntervencionCS
Id:          ResultadoIntervencionCS
Title:       "CS - Códigos para definir el tipo de resultado de la intervención psicológica"
Description: "Terminología para describir el tipo de resultado de la intervención psicológica"

* ^caseSensitive = true 
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
//* ^date = "2023-06-27T00:00:000-03:00"
/** ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
*/
* #01 "Contención"
* #02 "Alta clínica"
* #03 "Cierre por inasistencia"
* #04 "Cierre por alcance de servicio"
* #05 "Cierre por derivación interna"
* #06 "Cierre por derivación externa"
* #07 "Cierre voluntario"
* #08 "Continuidad"

ValueSet:       ResultadoIntervencionVS
Id:             ResultadoIntervencionVS
Title:          "VS - Códigos a usar para definir eL resultado de la intervención psicológica"
Description:    "Códigos válidos para describir el tipo de resultado de la intervención psicológica"
* ^experimental = true

* codes from system ResultadoIntervencionCS

CodeSystem:  PresionArterialCS
Id:          PresionArterialCS
Title:       "CS - Códigos para definir la unidad de medida de los datos Presión Arterial según UCUM"
Description: "Posibles unidades de medida de los datos Presión Arterial según UCUM"

* ^caseSensitive = true 
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
//* ^date = "2023-06-27T00:00:000-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"

* #UCUM1 "kPa" 
* #UCUM2 "mm[Hg]" 

ValueSet:       PresionArterialVS
Id:             PresionArterialVS
Title:          "VS - Códigos a usar para determinar la unidad de medida de los datos Presión Arterial según UCUM"
Description:    "Códigos válidos de la unidad de medida de los datos de Presión Arterial según UCUM"
* ^experimental = true

* codes from system PresionArterialCS