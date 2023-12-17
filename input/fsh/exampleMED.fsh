Instance: exampleMED 
Title: "Ejemplo Cuestionario SEMDA Medicina"
Description: "Ejemplo Cuestionario SEMDA Medicina"
InstanceOf: QuestionnaireResponse
Usage: #example
* identifier.value = "13"
* questionnaire = "http://example.org/Questionnaire/CuestionarioSEMDAMed"
* status = #completed
//* authored = "2023-04-12T19:09:52.678Z"

//  CUESTIONARIO SEMDA MEDICINA  //

* item[0].linkId = "MED"
* item[=].text = "Cuestionario Atención Médica"

//  DATOS GENERALES  //

* item[=].item[0].linkId = "datosGenerales"
* item[=].item[=].text = "Datos Generales Atención Médica"
 // Fechas //
* item[=].item[=].item[0].linkId = "fechaCreacion"
* item[=].item[=].item[=].answer.valueDate = "2023-01-01"
// Paciente //

* item[=].item[=].item[+].linkId = "datosPaciente"
* item[=].item[=].item[=].text = "Datos Paciente"
* item[=].item[=].item[=].item[0].linkId = "idPaciente"
* item[=].item[=].item[=].item[=].answer.valueString = "20132442-3"
//  DATOS ENCUENTRO INICIAL  //

* item[=].item[1].linkId = "encuentroInicial"
* item[=].item[=].text = "Datos Encuentro Inicial"

* item[=].item[1].item[0].linkId = "motivoConsulta"
* item[=].item[=].item[=].answer.valueString = "Dolor panza"

* item[=].item[1].item[+].linkId = "antecedentesFamiliares"
* item[=].item[=].item[=].answer.valueString = "No presenta enfermos en la familia"

* item[=].item[1].item[+].linkId = "antecedentesPersonales"
* item[=].item[=].item[=].answer.valueString = "Cólon irritable"

* item[=].item[1].item[+].linkId = "antecedentesQuirurgicos"
* item[=].item[=].item[=].answer.valueString = "Apendicitis a los 12 años" 

* item[=].item[1].item[+].linkId = "alergias"
* item[=].item[=].item[=].answer.valueString = "Polen"

* item[=].item[1].item[+].linkId = "historialVacunacion"
* item[=].item[=].item[=].answer.valueString = "Vacunas de niño sano y covid al dia" 


//  DATOS EXAMEN FÍSICO // CAMBIAR STRING POR DATOS NUMERICOS

* item[=].item[2].linkId = "examenFisico"
* item[=].item[=].text = "Datos Examen Físico"

* item[=].item[2].item[0].linkId = "peso"
* item[=].item[=].item[=].text = "Peso"

* item[=].item[2].item[=].item[0].linkId = "valorPeso"
* item[=].item[=].item[=].item[=].answer.valueDecimal = 70

* item[=].item[2].item[=].item[+].linkId = "unidadPeso"
* item[=].item[=].item[=].item[=].answer.valueCoding = http://unitsofmeasure.org#/kg "/kg"

* item[=].item[2].item[+].linkId = "altura"
* item[=].item[=].item[=].text = "Altura"

* item[=].item[2].item[=].item[0].linkId = "valorAltura"
* item[=].item[=].item[=].item[=].answer.valueDecimal = 170

* item[=].item[2].item[=].item[+].linkId = "unidadAltura"
* item[=].item[=].item[=].item[=].answer.valueCoding = http://unitsofmeasure.org#cm "cm"

* item[=].item[2].item[+].linkId = "presionArterial"
* item[=].item[=].item[=].text = "Presión Arterial"

* item[=].item[2].item[=].item[0].linkId = "valorPresionSistolica"
* item[=].item[=].item[=].item[=].answer.valueDecimal = 120

* item[=].item[2].item[=].item[+].linkId = "valorPresionDiastolica"
* item[=].item[=].item[=].item[=].answer.valueDecimal = 80

* item[=].item[2].item[=].item[+].linkId = "unidadPresion"
* item[=].item[=].item[=].item[=].answer.valueCoding = http://example.org/CodeSystem/PresionArterialCS#UCUM2

* item[=].item[2].item[+].linkId = "temperatura"
* item[=].item[=].item[=].text = "Temperatura"

* item[=].item[2].item[=].item[0].linkId = "valorTemperatura"
* item[=].item[=].item[=].item[=].answer.valueDecimal = 38.03

* item[=].item[2].item[=].item[+].linkId = "unidadTemperatura"
* item[=].item[=].item[=].item[=].answer.valueCoding = http://unitsofmeasure.org#Cel "Cel"

* item[=].item[2].item[+].linkId = "frecuenciaRespiratoria"
* item[=].item[=].item[=].text = "Frecuencia Respiratoria"

* item[=].item[2].item[=].item[0]..linkId = "valorFrecuenciaRespiratoria"
* item[=].item[=].item[=].item[=].answer.valueDecimal = 40

* item[=].item[2].item[=].item[+].linkId = "unidadFrecuenciaRespiratoria"
* item[=].item[=].item[=].item[=].text = "BPM"

* item[=].item[2].item[+].linkId = "frecuenciaCardiaca"
* item[=].item[=].item[=].text = "Frecuencia Cardiaca"

* item[=].item[2].item[=].item[0].linkId = "valorFrecuenciaCardiaca"
* item[=].item[=].item[=].item[=].answer.valueDecimal = 40

* item[=].item[2].item[=].item[+].linkId = "unidadFrecuenciaCardiaca"
* item[=].item[=].item[=].item[=].text = "BPM"

* item[=].item[2].item[+].linkId = "examinacion"
* item[=].item[=].item[=].answer.valueString = "no se encuentran problemas al palpar"


//  DATOS DIAGNOSTICO //

* item[=].item[3].linkId = "diagnosticoMED"
* item[=].item[=].text = "Datos Diagnóstico"

* item[=].item[=].item[0].linkId = "diagnostico"
* item[=].item[=].item[=].answer.valueString = "Diagnóstico weno"

* item[=].item[=].item[+].linkId = "observaciones"
* item[=].item[=].item[=].answer.valueString = "Observaciones malas"

//  DATOS TRATAMIENTO //

* item[=].item[4].linkId = "TratamientoMED"
* item[=].item[=].text = "Datos Tratamiento"

* item[=].item[=].item[0].linkId = "medicamentos"
* item[=].item[=].item[=].answer.valueString = "sane sane"

* item[=].item[=].item[+].linkId = "dosisMedicamento"
* item[=].item[=].item[=].answer.valueString = "10 minutos"

* item[=].item[=].item[+].linkId = "FrecuenciaMedicamento"
* item[=].item[=].item[=].answer.valueString = "cada 3 horas"

* item[=].item[=].item[+].linkId = "duracionTratamiento"
* item[=].item[=].item[=].answer.valueString = "Durante 1 semana"

* item[=].item[=].item[+].linkId = "recomendaciones"
* item[=].item[=].item[=].answer.valueString = "no jugar a la pelota"

//  DATOS PLAN DE SEGUIMIENTO //

* item[=].item[5].linkId = "planSeguimiento"
* item[=].item[=].text = "Datos Plan de Seguimiento"

* item[=].item[=].item[0].linkId = "fechaProxControl"
* item[=].item[=].item[=].answer.valueDateTime = "2025-02-07T14:30:00-00:00"

* item[=].item[=].item[+]..linkId = "examenes"
* item[=].item[=].item[=].answer.valueString = "No necesita exámenes"

* item[=].item[=].item[+].linkId = "efectosAdversos"
* item[=].item[=].item[=].answer.valueString = "Combustión espontánea"


//  DATOS CONTROL MÉDICO //

* item[=].item[6]..linkId = "controlMED"
* item[=].item[=].text = "Datos Control Médico"

* item[=].item[=].item[0].linkId = "fechaControlMED"
* item[=].item[=].item[=].answer.valueDateTime = "2025-02-07T14:30:00-00:00"

* item[=].item[=].item[+].linkId = "motivoControl"
* item[=].item[=].item[=].answer.valueString = "control de tratamiento"

* item[=].item[=].item[+].linkId = "diagnosticoControl"
* item[=].item[=].item[=].answer.valueString = "Paciente se encuentra sano"

* item[=].item[=].item[+].linkId = "Indicaciones"
* item[=].item[=].item[=].answer.valueString = "Realizar actividades con normalidad"