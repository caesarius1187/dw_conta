# Idea Uno: CONTA

## 1. Explicar qué es CONTA

**CONTA** es un sistema **web** que satisface todas las necesidades requeridas por un **Estudio Contable**.  
Actualmente cuenta con **tres módulos principales**:

### Módulo Impositivo
Permite liquidar **impuestos nacionales, provinciales y municipales**.

**Principales funcionalidades:**
- Importación de comprobantes desde AFIP, como por ejemplo:
  - “Mis comprobantes”
  - “Comprobantes en Línea”
  - Archivos CSV con formato predeterminado.
- Generación de los archivos de texto para la aplicación de AFIP **CITI Compras/Ventas**.
- Papeles de trabajo automáticos para el cálculo de:
  - **IVA**
  - **Convenio Multilateral y CM05**
  - **IIBB**
  - **Impuestos Municipales**

### Módulo Previsional
Incluye **liquidaciones de sueldos**, **cálculos de aportes y contribuciones**, y otras herramientas.

**Funciones destacadas:**
- Generación del archivo de texto para importar el **Formulario 931** de declaración de aportes y contribuciones a la web de AFIP.
- Importación de datos de empleados activos en relación de dependencia desde la web de AFIP.
- Liquidación de sueldos a partir de **convenios colectivos pre-cargados y actualizados automáticamente**.

### Módulo Contable
Permite llevar la **contabilidad de un contribuyente** y **generar estados contables automáticamente** en función de los asientos cargados.

**Características principales:**
- Plan de cuentas estándar con **aproximadamente 4000 cuentas**.
- Automatización de **asientos contables** e informes basados en los movimientos de las cuentas.
- Activación automática o manual de cuentas según las configuraciones del contribuyente.

**Estados contables disponibles:**
- Balance de Sumas y Saldos  
- Estado de Evolución del Patrimonio Neto  
- Estado de Resultados  
- Estado de Flujo de Efectivo  
- Estado de Situación Patrimonial  
Con sus respectivas **notas y anexos**.

---

## 2. Plantear cuál es la problemática

> ¿Cuál es la funcionalidad estrella en CONTA y en qué punto deberíamos prestar más atención para mejorar?

---

## 3. Definir las transformaciones que queremos hacer

### Previsional
- Cantidad de contribuyentes por estudio y por mes que **calculan sueldos**.  
- Cantidad de contribuyentes por estudio y por mes que **calculan SUSS**.  
- **Libro Sueldo Digital:** agregar un registro en CONTA que indique cuándo se utiliza esta función.

### Impositivo
- Cantidad de contribuyentes por estudio y por mes que **cargan ventas**.  
- Cantidad de contribuyentes por estudio y por mes que **cargan compras**.  
- Cantidad de contribuyentes por estudio y por mes que **liquidan IVA**.  
- Cantidad de contribuyentes por estudio y por mes que **liquidan Monotributo**.

### Contable
- **Asientos de ventas** por mes por estudio contable.  
- **Asientos de compras** por mes por estudio contable.  
- **Asientos de impuestos** por mes por estudio contable.  
- **Asientos de estados contables** por año por estudio contable.