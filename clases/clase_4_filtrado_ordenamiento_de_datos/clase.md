[⬅ Volver al índice](../../README.md)

## Clase 4: Filtrado y ordenamiento de datos

### Objetivos
- Aprender a filtrar y ordenar los datos de las consultas de manera eficiente.

### Temas

#### Uso avanzado de `WHERE`
- **Conceptos clave:** Utilizar `WHERE` para filtrar registros basados en condiciones específicas.
- **Operadores:** Uso de operadores como `=`, `<>`, `>`, `<`, `>=`, `<=`, `BETWEEN`, `IN`, `LIKE`, y `NULL`.
- **Condiciones compuestas:** Combinar múltiples condiciones usando `AND`, `OR`, y `NOT`.

#### Ordenar resultados con `ORDER BY`
- **Ordenamiento básico:** Utilizar `ORDER BY` para ordenar los resultados de una consulta por una o más columnas.
- **Ascendente y descendente:** Especificar el orden de los resultados como ascendente (`ASC`) o descendente (`DESC`).
- **Ordenar por múltiples columnas:** Cómo ordenar los resultados primero por una columna y luego por otra.

#### Limitar los resultados con `LIMIT`
- **Uso de `LIMIT`:** Restringir el número de registros devueltos en una consulta.
- **Paginación de resultados:** Usar `LIMIT` junto con `OFFSET` para implementar la paginación en los resultados de las consultas.

### Ejemplos

Seleccionar todos los campos de los usuarios cuya edad está entre 25 y 35 años:

    SELECT * FROM usuarios WHERE edad BETWEEN 25 AND 35;

Seleccionar usuarios y sus emails, ordenados alfabéticamente por nombre:

    SELECT nombre, email FROM usuarios ORDER BY nombre ASC;

Seleccionar los 5 primeros posts más recientes:

    SELECT * FROM posts ORDER BY fecha_publicacion DESC LIMIT 5;

Filtrar usuarios por un rango de edad y ordenar por nombre:

    SELECT * FROM usuarios
    WHERE edad BETWEEN 20 AND 30
    ORDER BY nombre ASC;

Seleccionar los 10 posts más recientes de un usuario específico:

    SELECT * FROM posts
    WHERE usuario_id = 3
    ORDER BY fecha_publicacion DESC
    LIMIT 10;

Encontrar usuarios cuyo nombre comience con 'A' y ordenarlos por edad:

    SELECT * FROM usuarios
    WHERE nombre LIKE 'A%'
    ORDER BY edad ASC;

Obtener los 5 primeros usuarios que tienen una dirección de email en un dominio específico, ordenados alfabéticamente:

    SELECT * FROM usuarios
    WHERE email LIKE '%@example.com'
    ORDER BY nombre ASC
    LIMIT 5;

Seleccionar posts que contengan la palabra 'viaje' en el título, excluyendo los publicados en 2023:

    SELECT * FROM posts
    WHERE titulo LIKE '%viaje%'
    AND YEAR(fecha_publicacion) != 2023
    ORDER BY fecha_publicacion DESC;

Paginar resultados, seleccionando un rango específico de posts:

    SELECT * FROM posts
    ORDER BY fecha_publicacion DESC
    LIMIT 5 OFFSET 5;

Seleccionar usuarios que tienen especificada su edad y ordenar por email:

    SELECT * FROM usuarios
    WHERE edad IS NOT NULL
    ORDER BY email ASC;

Encontrar posts que no tienen asignado un usuario_id:

    SELECT * FROM posts
    WHERE usuario_id IS NULL;

Seleccionar usuarios por nombre, excluyendo dos nombres específicos:

    SELECT * FROM usuarios
    WHERE nombre NOT IN ('Ana', 'Luis');

Buscar usuarios que tienen menos de 30 años o que su email contiene 'example.com':

    SELECT * FROM usuarios
    WHERE edad < 30 OR email LIKE '%example.com%';

Obtener posts que contengan la palabra 'evento' en el título y que hayan sido publicados después de una fecha específica, excluyendo los posts de un usuario específico:

    SELECT * FROM posts
    WHERE titulo LIKE '%evento%'
    AND fecha_publicacion > '2023-01-01'
    AND usuario_id != 2;