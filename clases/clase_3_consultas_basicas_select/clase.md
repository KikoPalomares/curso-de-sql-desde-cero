[⬅ Volver al índice](../../README.md)

## Clase 3: Consultas básicas (SELECT)

### Objetivos
- Realizar consultas simples para recuperar datos de una base de datos.

### Antes de comenzar: Importancia de los datos
Para poder practicar y aprender efectivamente cómo realizar consultas `SELECT`, es crucial tener datos en la base de datos. Esto significa que antes de adentrarnos en las consultas, debemos asegurarnos de que nuestras tablas contengan registros. Puedes insertar datos manualmente usando el comando `INSERT` o importar datos de archivos o fuentes externas, dependiendo de las herramientas y opciones que tu sistema de gestión de bases de datos (SGBD) soporte.

### Temas

#### Sintaxis básica de `SELECT`
- **Uso básico:** `SELECT * FROM tabla;` para seleccionar todas las columnas de la tabla.
- **Selección específica:** `SELECT columna1, columna2 FROM tabla;` para seleccionar columnas específicas.

#### Seleccionar todas las columnas vs. seleccionar columnas específicas
- **Todas las columnas:** Útil para una vista rápida de los datos, pero puede ser ineficiente con tablas grandes.
- **Columnas específicas:** Mejora el rendimiento y la claridad al enfocarse solo en los datos relevantes.

#### Uso de `WHERE` para filtrar resultados
- **Filtrado básico:** `SELECT * FROM tabla WHERE condición;` para obtener registros que cumplan con una condición específica.
- Ejemplos de condiciones: `columna = valor`, `columna > valor`, `columna LIKE 'patrón'`.

#### Operadores lógicos y de comparación
- **Operadores de comparación:** `=`, `!=`, `>`, `<`, `>=`, `<=`.
- **Operadores lógicos:** `AND`, `OR`, `NOT` para combinar múltiples condiciones.

### Ejercicios Prácticos
1. Realizar una consulta para seleccionar todos los registros de una tabla de tu elección.
2. Escribir una consulta para seleccionar registros que cumplan con una condición específica (por ejemplo, todos los empleados mayores de 30 años).
3. Utilizar operadores lógicos para combinar condiciones (por ejemplo, seleccionar empleados mayores de 30 años que pertenezcan a un departamento específico).

### Tarea
- Crear una consulta que seleccione nombres y emails de empleados de un departamento específico, ordenados alfabéticamente por nombre.
