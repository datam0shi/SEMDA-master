Instance: CuestionarioSEMDAPsi 
Title: "Cuestionario SEMDA Psicología"
Description: "Cuestionario SEMDA Psicología"
InstanceOf: Questionnaire
Usage: #example

* status = #draft

* version = "0.1"
* name = "CuestionarioSEMDAPsi"
* title = "Cuestionario SEMDA Psicología"
* status = #draft
* date = "2023-09-27"
* publisher = "yo mismo"

//  Cuestionario SEMDA Psicología  //

* item[0].type = #group
* item[=].linkId = "PSI"
* item[=].text = "Cuestionario Atención Psicológica"
* item[=].required = true

//  DATOS GENERALES  //

* item[=].item[0].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "datosGenerales"
* item[=].item[=].text = "Datos Generales Atención Psicológica"
 // Fechas //
* item[=].item[0].item[0].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaCreacion" //solapar con authored en response
* item[=].item[=].item[=].text = "Fecha creación"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = 1900-01-01
// Paciente //


* item[=].item[0].item[+].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "datosPaciente"
* item[=].item[=].item[=].text = "Datos Paciente"

* item[=].item[=].item[=].item[0].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "idPaciente" 
* item[=].item[=].item[=].item[=].definition = "example.org/StructureDefinition/Paciente" 
* item[=].item[=].item[=].item[=].text = "Datos Paciente referenciados desde el Perfil Paciente"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceProfile"
* item[=].item[=].item[=].item[=].extension[=].valueCanonical = "http://example.org/StructureDefinition/Paciente"

//  DATOS DERIVACIÓN  //

* item[=].item[1].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "derivacionPsicologica"
* item[=].item[=].text = "Datos Derivación Atención Psicológica"

* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "motivoConsulta"
* item[=].item[=].item[=].text = "Motivo consulta"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "sintomatologia"
* item[=].item[=].item[=].text = "Sintomatología"

* item[=].item[=].item[+].type = #choice 
* item[=].item[=].item[=].answerValueSet = "http://example.org/ValueSet/ComportamientoSuicidaVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "comportamientoSuicida"
* item[=].item[=].item[=].text = "Comportamiento suicida"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionComportamiento"
* item[=].item[=].item[=].text = "Cómo y donde" //IDENTAR DENTRO DE SUICIDIO
* item[=].item[=].item[=].enableWhen.question = "comportamientoSuicida" 
* item[=].item[=].item[=].enableWhen.operator = #!=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #CS0
* item[=].item[=].item[=].enableWhen.answerCoding.system = "http://example.org/ValueSet/ComportamientoSuicidaCS"


* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "atencionPrevia"
* item[=].item[=].item[=].text = "Atenciones previas de salud mental"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "diagnosticoPrevio"
* item[=].item[=].item[=].text = "Diagnóstico previo" 

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "antecedentesMED"
* item[=].item[=].item[=].text = "Antecedentes médicos" //LINKEAR?

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "antecedentesFamiliaresPSI"
* item[=].item[=].item[=].text = "Antecedentes familiares de salud mental"

//  DIAGNOSTICO PSICOLÓGICO //

* item[=].item[2].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "diagnosticoPSI"
* item[=].item[=].text = "Diagnóstico Psicológico"

* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "hipotesisDiagnostica"
* item[=].item[=].item[=].text = "Hipótesis diagnóstica"

* item[=].item[=].item[+].type = #choice 
* item[=].item[=].item[=].answerValueSet = "http://example.org/ValueSet/ResultadoIntervencionVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "resultadoIntervencion"
* item[=].item[=].item[=].text = "Resultado intervención"


//  CONTROL PSICOLÓGICO  // DEBERIA IR IDENTADO? PQ REFIERE A NOMBRE OTRA VEZ

* item[=].item[3].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "controlPSI"
* item[=].item[=].text = "Control Psicológico"

// resto //

* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "estadoEmocional"
* item[=].item[=].item[=].text = "Estado emocional"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "evolucion"
* item[=].item[=].item[=].text = "Evolución"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "acuerdos"
* item[=].item[=].item[=].text = "Toma de acuerdos"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "aspectoXtrabajar"
* item[=].item[=].item[=].text = "Aspectos a trabajar por sesión"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "derivaciones"
* item[=].item[=].item[=].text = "Derivaciones"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "observaciones"
* item[=].item[=].item[=].text = "Observaciones"