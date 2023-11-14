Profile: RespuestaSEMDA
Parent: QuestionnaireResponse 
Title: "Respuesta de Cuestionario SEMDA"
Description: "Perfil que contiene los elementos mínimos a considerar para la respuesta a los cuestionarios dispuestos por el SEMDA."

* identifier 1..1 MS
  * ^short = "Identificador único para este set de respuestas"
  * ^definition = "Identificador único asignado para el set de respuestas"
  * system 0..1 MS
    * ^short = "Ubicación del valor de identificación"
    * ^definition = "Identificación única asignada de la URL sobrela cual se describe el set de valores"
  * value 1..1 MS
    * ^short = "Valor del identificador único"
    * ^definition = "Valor del identificador único"
* questionnaire 1..1 MS
  * ^short = "Recurso cuestionario al cual hacen referencia las respuestas"
  * ^definition = "Cuestionario SEMDA 1 es definido como ejemplo en esta guía"
  * ^comment = "Debe contener la URL canónica del cuestionario"
* status 1..1
* status from QuestionnaireResponseStatus (required)
  * ^short = "Estado en el cual se encuentra la respuesta del cuestionario"
  * ^definition = "Estado de los formularios SEMDA debe estar siempre en Completed"
  * ^binding.description = "Se utiliza In Progress | Completed"
* authored 1.. MS
  * ^short = "Fecha de llenado del cuestionario"
  * ^definition = "Fecha/hora en la cual las respuestas fueron llenadas como definitivas"
  * ^comment = " En Orden de Preferencia usar el  linkid fechaLlenadoFicha si no fechaNotificacion y de no contar con ninguno de los ateriores fechaRepoNacional "
* item 1.. MS
  * ^short = "Grupos, subgrupos y preguntas a responder basadas en el Cuestionario"
  * ^definition = "Grupos y preguntas. Las respuestas estan basadas en el cuestionario deben seguir linkId y tipo de datos"
  * ^comment = "Las respuestas deben contar con el mismo linkId y tipo de datos del Questionnaire, al igual como deben respetar las restricciones generadas tanto para habilitar la respuesta, validar la respuesta o terminologías usadas"
* questionnaire 1..1 MS
  * ^short = "Recurso cuestionario"
  * ^definition = "Cuestionario SEMDA desarrollado"
  * ^comment = "debe contener la url canónica del cuestionario"
