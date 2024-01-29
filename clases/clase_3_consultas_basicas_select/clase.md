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

### Ejemplos

Seleccionar todos los campos de todos los usuarios:

    SELECT * FROM usuarios;

Seleccionar solo el nombre y el email de todos los usuarios:

    SELECT nombre, email FROM usuarios;

Seleccionar todos los campos de los posts publicados después de una fecha específica:

    SELECT * FROM posts WHERE fecha_publicacion > '2023-01-05';

Seleccionar los nombres de los usuarios que tienen más de 30 años:

    SELECT nombre FROM usuarios WHERE edad > 30;

Seleccionar todos los títulos de los posts de un usuario específico por usuario_id:

    SELECT titulo FROM posts WHERE usuario_id = 5;

Seleccionar usuarios y sus emails, ordenados alfabéticamente por nombre:

    SELECT nombre, email FROM usuarios ORDER BY nombre ASC;

Seleccionar los 5 primeros posts más recientes:

    SELECT * FROM posts ORDER BY fecha_publicacion DESC LIMIT 5;

Seleccionar usuarios que tienen una dirección de email de un dominio específico:

    SELECT * FROM usuarios WHERE email LIKE '%@example.com';

Seleccionar posts que contienen una palabra específica en el título:

    SELECT * FROM posts WHERE titulo LIKE '%Viaje%';

Seleccionar todos los campos de los usuarios cuya edad está entre 25 y 35 años:

    SELECT * FROM usuarios WHERE edad BETWEEN 25 AND 35;
