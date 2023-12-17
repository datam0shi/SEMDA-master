Instance: CuestionarioSEMDAMed 
Title: "Cuestionario SEMDA Medicina"
Description: "Cuestionario SEMDA Medicina"
InstanceOf: Questionnaire
Usage: #example

* status = #draft

* version = "0.1"
* name = "CuestionarioSEMDAMed"
* title = "Cuestionario SEMDA Medicina"
* status = #draft
* date = "2023-09-27"
* publisher = "yo mismo"

//  CUESTIONARIO SEMDA MEDICINA  //

* item[0].type = #group
* item[=].linkId = "MED"
* item[=].text = "Cuestionario Atención Médica"
* item[=].required = true

//  DATOS GENERALES  //

* item[=].item[0].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "datosGenerales"
* item[=].item[=].text = "Datos Generales Atención Médica"
 // Fechas //
* item[=].item[0].item[0].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaCreacion"
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

//  DATOS ENCUENTRO INICIAL  //

* item[=].item[1].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "encuentroInicial"
* item[=].item[=].text = "Datos Encuentro Inicial"

* item[=].item[1].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "motivoConsulta"
* item[=].item[=].item[=].text = "Motivo Consulta"

* item[=].item[1].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "antecedentesFamiliares"
* item[=].item[=].item[=].text = "Antecedentes Morbilidad Familiar"

* item[=].item[1].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "antecedentesPersonales"
* item[=].item[=].item[=].text = "Antecedentes Morbilidad Personal"

* item[=].item[1].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "antecedentesQuirurgicos"
* item[=].item[=].item[=].text = "Antecedentes Quirúrgicos" 

* item[=].item[1].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "alergias"
* item[=].item[=].item[=].text = "Alergias"

* item[=].item[1].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "historialVacunacion"
* item[=].item[=].item[=].text = "Historial de Vacunación" 


//  DATOS EXAMEN FÍSICO // CAMBIAR STRING POR DATOS NUMERICOS

* item[=].item[2].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "examenFisico"
* item[=].item[=].text = "Datos Examen Físico"

* item[=].item[2].item[0].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "peso"
* item[=].item[=].item[=].text = "Peso"

* item[=].item[2].item[=].item[0].type = #decimal
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "valorPeso"
* item[=].item[=].item[=].item[=].text = "Valor de Peso"

* item[=].item[2].item[=].item[+].type = #choice
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/ucum-bodyweight"
* item[=].item[=].item[=].item[=].linkId = "unidadPeso"
* item[=].item[=].item[=].item[=].text = "Unidad de medida de Peso"

* item[=].item[2].item[+].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "altura"
* item[=].item[=].item[=].text = "Altura"

* item[=].item[2].item[=].item[0].type = #decimal
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "valorAltura"
* item[=].item[=].item[=].item[=].text = "Valor de Altura"

* item[=].item[2].item[=].item[+].type = #choice
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/ucum-bodylength"
* item[=].item[=].item[=].item[=].linkId = "unidadAltura"
* item[=].item[=].item[=].item[=].text = "Unidad de medida de Altura"

* item[=].item[2].item[+].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "presionArterial"
* item[=].item[=].item[=].text = "Presión Arterial"

* item[=].item[2].item[=].item[0].type = #decimal
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "valorPresionSistolica"
* item[=].item[=].item[=].item[=].text = "Valor de Presión Arterial Sistólica"

* item[=].item[2].item[=].item[+].type = #decimal
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "valorPresionDiastolica"
* item[=].item[=].item[=].item[=].text = "Valor de Presión Arterial Diastolica"

* item[=].item[2].item[=].item[+].type = #choice
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "unidadPresion"
* item[=].item[=].item[=].item[=].answerValueSet = "http://example.org/ValueSet/PresionArterialVS"
* item[=].item[=].item[=].item[=].text = "Unidad de medida de Presión Arterial"

* item[=].item[2].item[+].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "temperatura"
* item[=].item[=].item[=].text = "Temperatura"

* item[=].item[2].item[=].item[0].type = #decimal
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "valorTemperatura"
* item[=].item[=].item[=].item[=].text = "Valor de Temperatura"

* item[=].item[2].item[=].item[+].type = #choice
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/ucum-bodytemp"
* item[=].item[=].item[=].item[=].linkId = "unidadTemperatura"
* item[=].item[=].item[=].item[=].text = "Unidad de medida de Temperatura"

* item[=].item[2].item[+].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "frecuenciaRespiratoria"
* item[=].item[=].item[=].text = "Frecuencia Respiratoria"

* item[=].item[2].item[=].item[0].type = #decimal
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "valorFrecuenciaRespiratoria"
* item[=].item[=].item[=].item[=].text = "Valor de Frecuencia Respiratoria"

* item[=].item[2].item[=].item[+].type = #display
* item[=].item[=].item[=].item[=].linkId = "unidadFrecuenciaRespiratoria"
* item[=].item[=].item[=].item[=].text = "BPM"

* item[=].item[2].item[+].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "frecuenciaCardiaca"
* item[=].item[=].item[=].text = "Frecuencia Cardiaca"

* item[=].item[2].item[=].item[0].type = #decimal
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "valorFrecuenciaCardiaca"
* item[=].item[=].item[=].item[=].text = "Valor de Frecuencia Cardiaca"

* item[=].item[2].item[=].item[+].type = #display
* item[=].item[=].item[=].item[=].linkId = "unidadFrecuenciaCardiaca"
* item[=].item[=].item[=].item[=].text = "BPM"


* item[=].item[2].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "examinacion"
* item[=].item[=].item[=].text = "Examinación"


//  DATOS DIAGNOSTICO //

* item[=].item[3].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "diagnosticoMED"
* item[=].item[=].text = "Datos Diagnóstico"

* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "diagnostico"
* item[=].item[=].item[=].text = "Diagnóstico"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "observaciones"
* item[=].item[=].item[=].text = "Observaciones"

//  DATOS TRATAMIENTO //

* item[=].item[4].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "TratamientoMED"
* item[=].item[=].text = "Datos Tratamiento"

* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "medicamentos"
* item[=].item[=].item[=].text = "Medicamentos"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "dosisMedicamento"
* item[=].item[=].item[=].text = "Dosis del Medicamento"

* item[=].item[=].item[+].type = #string // REVISAR TIPO DE DATO 
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "FrecuenciaMedicamento"
* item[=].item[=].item[=].text = "Frecuencia de ingesta Medicamento"

* item[=].item[=].item[+].type = #string // REVISAR TIPO DE DATO 
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "duracionTratamiento"
* item[=].item[=].item[=].text = "Duración del tratamiento"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "recomendaciones"
* item[=].item[=].item[=].text = "Recomendaciones"

//  DATOS PLAN DE SEGUIMIENTO //

* item[=].item[5].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "planSeguimiento"
* item[=].item[=].text = "Datos Plan de Seguimiento"

* item[=].item[=].item[0].type = #dateTime
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaProxControl"
* item[=].item[=].item[=].text = "Fecha de próximo control"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "examenes"
* item[=].item[=].item[=].text = "Exámenes"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "efectosAdversos"
* item[=].item[=].item[=].text = "Complemento y efectos adversos"


//  DATOS CONTROL MÉDICO //

* item[=].item[6].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "controlMED"
* item[=].item[=].text = "Datos Control Médico"

* item[=].item[=].item[0].type = #dateTime
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "fechaControlMED"
* item[=].item[=].item[=].text = "Fecha de control"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "motivoControl"
* item[=].item[=].item[=].text = "Motivo de Consulta de control"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "diagnosticoControl"
* item[=].item[=].item[=].text = "Diagnóstico"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "Indicaciones"
* item[=].item[=].item[=].text = "Indicaciones"