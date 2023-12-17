### Caso de Uso Proyecto

El proyecto consta de la consulta y publicación de datos relacionados a la atención médica en el repositorio SEMDA, usando del estandar **FHIR**. Es a partir de ello que se definen los 2 casos de uso, siendo estos el Uso de Cuestionario para Atención Médica y el Uso de Cuestionario para Atención de Salud Mental.

### Caso de Uso 1: Uso de Cuestionario para Atención Médica
<br>

Este caso de uso describe la generación de un **formulario FHIR** diseñado para la publicación de datos de atención médica del paciente y la consulta mediante parametros de busqueda, para el cual se utiliza estrictamente el cuestionario definido como **CuestionarioSEMDAMed**. Este caso de uso presenta la siguiente secuencia:
<br>

* Questionnaire: Cuestionario SEMDA Medicina

*  En primera instancia se consulta la existencia del perfil paciente (**GET**) mediante un set de parátros de busqueda definidos a partir del Search Parameter del recurso Paciente (Nombre, Apellido, Carrera). En caso de no encontrarse, se genera el recurso paciente y se publica como **Recurso Patient**.
*  El **Recurso QuestionnaireResponse** generado se publica al endpoint determinado como repositorio de destino (**POST**), utilizando exclusivamente el **Recurso Questionnaire** llamado **"CuestionarioSEMDAMed"**.
* El servicio de repositorio deberia responder a la operación indicando recepción, errores y/o ID del recurso Posteado.
<br>


<br>
<br>


<div align="center">
  <img src="CU1.png"> 
  <p>Transacciones entre Médico y Repositorio</p>
</div>

<br>


### Caso de Uso 2: Uso de Cuestionario para Salud Mental
<br>

Este caso de uso describe la generación de un **formulario FHIR** diseñado para la publicación de datos de atención médica del paciente y la consulta mediante parametros de busqueda, para el cual se utiliza estrictamente el cuestionario definido como **CuestionarioSEMDAPsi**. Este caso de uso presenta la siguiente secuencia:
<br>

* Questionnaire: Cuestionario SEMDA Salud Mental

*  En primera instancia se consulta la existencia del perfil paciente (**GET**) mediante un set de parátros de busqueda definidos a partir del Search Parameter del recurso Paciente (Nombre, Apellido, Carrera). En caso de no encontrarse, se genera el recurso paciente y se publica como **Recurso Patient**.
*  El **Recurso QuestionnaireResponse** generado se publica al endpoint determinado como repositorio de destino (**POST**), utilizando exclusivamente el **Recurso Questionnaire** llamado **"CuestionarioSEMDAPsi"**.
* El servicio de repositorio deberia responder a la operación indicando recepción, errores y/o ID del recurso Posteado.
<br>


<br>
<br>


<div align="center">
  <img src="CU2.png"> 
  <p>Transacciones entre Psicólogo y Repositorio</p>
</div>

<br>