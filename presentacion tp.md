**Título del tema:**
Conta data warehouse

**Integrantes del Grupo:**
Lic. Augusto Cesar Guerrero
Lic. María Florencia Ossola

**Descripción sobre la Situación Actual**
CONTA es un sistema web que satisface todas las necesidades requeridas por un Estudio Contable. Actualmente cuenta con tres módulos principales que se describen a continuación.

**Módulo Impositivo**
Permite liquidar impuestos nacionales, provinciales y municipales.
Principales funcionalidades
Importación de comprobantes desde AFIP, por ejemplo:
“Mis comprobantes”
“Comprobantes en Línea”
Archivos CSV con formato predeterminado
Generación de archivos de texto para la aplicación de AFIP CITI Compras/Ventas.
Papeles de trabajo automáticos para el cálculo de:
IVA
Convenio Multilateral y CM05
IIBB
Impuestos Municipales

**Módulo Previsional**
Incluye liquidaciones de sueldos, cálculos de aportes y contribuciones, y otras herramientas relacionadas con la gestión previsional.
Funciones destacadas
Generación del archivo de texto para importar el Formulario 931 (declaración de aportes y contribuciones) a la web de AFIP.
Importación de datos de empleados activos en relación de dependencia desde la web de AFIP.
Liquidación de sueldos a partir de convenios colectivos pre-cargados y actualizados automáticamente.

**Módulo Contable**
Permite llevar la contabilidad de un contribuyente y generar estados contables automáticamente en función de los asientos cargados.
Características principales
Plan de cuentas estándar con aproximadamente 4000 cuentas.
Automatización de asientos contables e informes basados en los movimientos de las cuentas.
Activación automática o manual de cuentas según las configuraciones del contribuyente.
Estados contables disponibles
Balance de Sumas y Saldos
Estado de Evolución del Patrimonio Neto
Estado de Resultados
Estado de Flujo de Efectivo
Estado de Situación Patrimonial

**Planteo del Problema**
Se desea conocer cuál es la funcionalidad estrella en CONTA y en qué punto deberíamos prestar más atención para mejorar la experiencia del usuario. 
Desarrollo de la Solución
Se diseñaran los siguientes esquemas, según los diferentes módulos de CONTA:

*Previsional*
Cantidad de contribuyentes por estudio y por mes que calculan sueldos.
Cantidad de contribuyentes por estudio y por mes que calculan SUSS.
Libro Sueldo Digital: agregar un registro en CONTA que indique cuándo se utiliza esta función.
*Impositivo*
Cantidad de contribuyentes por estudio y por mes que cargan ventas.
Cantidad de contribuyentes por estudio y por mes que cargan compras.
Cantidad de contribuyentes por estudio y por mes que liquidan IVA.
Cantidad de contribuyentes por estudio y por mes que liquidan Monotributo.
*Contable*
Asientos de ventas por mes por estudio contable.
Asientos de compras por mes por estudio contable.
Asientos de impuestos por mes por estudio contable.
Asientos de estados contables por año por estudio contable.

**Desarrollo de la solucion**

A continuacion se detallan los pasos seguidos para la solucion de: *Cantidad de contribuyentes por estudio y por mes que calculan sueldos* del módulo Previsional, que se tomo como muestra de como se deberian trabajar todas las soluciones.

Nuestro proyecto comenzó con un desafío común pero crítico: teníamos una base de datos operativa de CONTA repleta de información valiosa, pero también cargada con datos sensibles de clientes reales. El primer paso fue proteger esta información. Realizamos una exportación completa de la base de datos y procedimos a un meticuloso proceso de limpieza, eliminando y anonimizando todos los datos de clientes reales. Solo conservamos la información de prueba necesaria para construir una prueba de concepto sólida y representativa.

Con los datos preparados, nos enfrentamos al siguiente obstáculo: nuestros scripts estaban escritos para MySQL, pero necesitábamos trabajar en PostgreSQL. Aprovechamos agentes de inteligencia artificial para asistir en la migración de los scripts, traduciendo la sintaxis y las particularidades de MySQL al dialecto de PostgreSQL. 
Una vez adaptados los scripts, importamos la base de datos en PostgreSQL dentro de nuestra máquina virtual.

Con la infraestructura base establecida, nos sumergimos en el diseño del data warehouse, un proceso que requirió comprensión de los objetivos planteados en nuestro problema inicial.

Pentaho Data Integration (Spoon) se convirtió en nuestro laboratorio de transformación. Aquí construimos los pipelines de datos que alimentarían nuestro data warehouse. Diseñamos transformaciones que extraían información de la base operativa, la limpiaban, la enriquecían y finalmente la cargaban en las estructuras dimensionales que habíamos creado.
Un desafío particular surgió con la tabla de tiempos: los campos de fecha estaban almacenados como strings, un formato poco práctico para análisis temporales. Configuramos un Job especializado que no solo convertía estos campos al tipo date apropiado, sino que también derivaba información adicional valiosa: extraía el mes y el año de cada registro, enriqueciendo nuestras capacidades de análisis temporal.

La etapa final nos llevó a Workbench, donde construimos un cubo OLAP que encapsulaba toda la complejidad de nuestros datos en una estructura intuitiva y poderosa. Este cubo no solo organizaba la información, sino que desbloqueaba nuevas formas de explorarla. Finalmente, publicamos el cubo en Pentaho, poniendo a disposición de los usuarios las tablas y las diversas vistas que la herramienta ofrece. 

Como conclusión, comenzando desde una base de datos transaccional se logro obtener un sistema de inteligencia de negocios, listo para generar insights y apoyar la toma de decisiones estratégicas.

Todos los archivos utilizados y mencionados en esta prensentacion estan disponibles en repositorio https://github.com/caesarius1187/dw_conta.


