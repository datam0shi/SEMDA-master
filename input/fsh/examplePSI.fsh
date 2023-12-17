Instance: examplePSI 
Title: "Ejemplo Cuestionario SEMDA Psicología"
Description: "Ejemplo Cuestionario SEMDA Psicología"

InstanceOf: QuestionnaireResponse
Usage: #example
* identifier.value = "14"
* questionnaire = "http://example.org/Questionnaire/CuestionarioSEMDAPsi"
* status = #completed
//* authored = "2023-04-12T19:09:52.678Z"

//  CUESTIONARIO SEMDA MEDICINA  //

* item[0].linkId = "PSI"
* item[=].text = "Cuestionario Atención Psicológica"

//  DATOS GENERALES  //

* item[=].item[0].linkId = "datosGenerales"
* item[=].item[=].text = "Datos Generales Atención Psicológica"
 // Fechas //
* item[=].item[=].item[0].linkId = "fechaCreacion"
* item[=].item[=].item[=].answer.valueDate = "2023-06-21"
// Paciente //

* item[=].item[=].item[+].linkId = "datosPaciente"
* item[=].item[=].item[=].text = "Datos Paciente"
* item[=].item[=].item[=].item[0].linkId = "idPaciente"
* item[=].item[=].item[=].item[=].answer.valueString = "20132442-3"
//  DATOS DERIVACIÓN  //

* item[=].item[1].linkId = "derivacionPsicologica"
* item[=].item[=].text = "Datos Derivación Atención Psicológica"

* item[=].item[=].item[0].linkId = "motivoConsulta"
* item[=].item[=].item[=].answer.valueString = "Sensacion de anhedonia"

* item[=].item[=].item[+].linkId = "sintomatologia"
* item[=].item[=].item[=].answer.valueString = "Cansansio, desgano y perdida del apetito"

* item[=].item[=].item[+].linkId = "comportamientoSuicida"
* item[=].item[=].item[=].answer.valueCoding = http://example.org/CodeSystem/ComportamientoSuicidaCS#CS0

* item[=].item[=].item[+].linkId = "descripcionComportamiento"
* item[=].item[=].item[=].answer.valueString = "N/A" //IDENTAR DENTRO DE SUICIDIO


* item[=].item[=].item[+].linkId = "atencionPrevia"
* item[=].item[=].item[=].answer.valueString = "atención hace más de un año"

* item[=].item[=].item[+].linkId = "diagnosticoPrevio"
* item[=].item[=].item[=].answer.valueString = "crisis ansiosa generalizada" 

* item[=].item[=].item[+].linkId = "antecedentesMED"
* item[=].item[=].item[=].answer.valueString = "Crisis Ansiosas" //LINKEAR?

* item[=].item[=].item[+].linkId = "antecedentesFamiliaresPSI"
* item[=].item[=].item[=].answer.valueString = "Familiares con cuadros de depresión"

//  DIAGNOSTICO PSICOLÓGICO //

* item[=].item[2].linkId = "diagnosticoPSI"
* item[=].item[=].text = "Diagnóstico Psicológico"

* item[=].item[=].item[0].linkId = "hipotesisDiagnostica"
* item[=].item[=].item[=].answer.valueString = "Relacionado con el cierre de semestre"

* item[=].item[=].item[+].linkId = "resultadoIntervencion"
* item[=].item[=].item[=].answer.valueCoding = http://example.org/CodeSystem/ResultadoIntervencionCS#08



//  CONTROL PSICOLÓGICO  // DEBERIA IR IDENTADO? PQ REFIERE A NOMBRE OTRA VEZ

* item[=].item[3].linkId = "controlPSI"
* item[=].item[=].text = "Control Psicológico"

// resto //

* item[=].item[=].item[0].linkId = "estadoEmocional"
* item[=].item[=].item[=].answer.valueString = "En buen estado a pesar de la sensación de cansansio"

* item[=].item[=].item[+].linkId = "evolucion"
* item[=].item[=].item[=].answer.valueString = "N/A, primera atención"

* item[=].item[=].item[+].linkId = "acuerdos"
* item[=].item[=].item[=].answer.valueString = "Realizar actividades al aire libre"

* item[=].item[=].item[+].linkId = "aspectoXtrabajar"
* item[=].item[=].item[=].answer.valueString = "Actividades de ocio que no ayudan al progreso"

* item[=].item[=].item[+].linkId = "derivaciones"
* item[=].item[=].item[=].answer.valueString = "nada"

* item[=].item[=].item[+].linkId = "observaciones"
* item[=].item[=].item[=].answer.valueString = "Paciente se muestra entusiasmado con cambiar sus habitos para mejorar su estado de salud mental"