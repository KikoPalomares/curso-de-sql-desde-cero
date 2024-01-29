[⬅ Volver al índice](../../README.md)

## Clase 2: Creación y diseño de bases de datos

### Objetivos
- Aprender a navegar por una base de datos y entender la estructura de las tablas.

### Temas
#### Uso de comandos básicos:
  - `SHOW DATABASES`: Lista todas las bases de datos en el sistema de gestión de bases de datos.
  - `USE database_name`: Selecciona una base de datos para trabajar con ella.
  - `SHOW TABLES`: Muestra todas las tablas dentro de la base de datos seleccionada.

#### Entender la estructura de una tabla:
  - `DESCRIBE table_name`: Proporciona la descripción de la estructura de la tabla, incluyendo los nombres de columna, tipos de datos, y si se permite o no el valor NULL.

#### Conceptos clave
  - **Tabla:** Conjunto de datos organizados en filas y columnas.
  - **Fila (Registro):** Conjunto de datos relacionados que representan un único ítem dentro de una tabla.
  - **Columna (Campo):** Estructura que almacena un tipo específico de dato dentro de una tabla.
  - **Clave primaria:** Columna o conjunto de columnas que identifican de manera única cada fila en la tabla.

**Ejemplo tabla "usuarios":**

| ID  | Nombre    | Email                | Edad |
|-----|-----------|----------------------|------|
| 1   | Ana       | ana@example.com      | 25   |
| 2   | Luis      | luis@example.com     | 30   |
| 3   | Marta     | marta@example.com    | 28   |



La tabla "usuarios" contiene 4 columnas: ID, Nombre, Email, y Edad.
- Clave Primaria: La columna ID es la clave primaria de esta tabla.
- Cada ID es único para cada usuario, lo que significa que no pueden existir dos filas con el mismo valor de ID.
- La clave primaria ayuda a identificar de manera única cada fila en la tabla y a establecer relaciones con otras tablas en la base de datos.
Esta tabla de ejemplo demuestra cómo la clave primaria (ID en este caso) asegura que cada registro en la tabla "Usuarios" sea único y fácilmente identificable.

#### Crear bases de datos y tablas:
  - `CREATE DATABASE database_name`: Crea una nueva base de datos.
  - `CREATE TABLE table_name (column1 datatype, column2 datatype, ...)`: Crea una nueva tabla especificando las columnas y sus tipos de datos.

##### Crear tablas Ejemplo:

Para crear una tabla Usuarios que incluya una clave primaria, podrías usar el siguiente comando SQL. Este ejemplo define varias columnas: ID como un identificador único para cada usuario, Nombre, Email, y Edad. La columna ID se establece como la clave primaria, lo que garantiza que cada valor en esta columna sea único y no nulo.

    CREATE TABLE usuarios (
        id INT AUTO_INCREMENT,
        nombre VARCHAR(100) NOT NULL,
        email VARCHAR(100) UNIQUE NOT NULL,
        edad INT,
        PRIMARY KEY (id)
    );

**Explicación de cada parte:**

- **ID INT AUTO_INCREMENT**: Define la columna ID como un entero (INT) que se autoincrementa automáticamente cada vez que se inserta una nueva fila. Esto asegura que cada usuario tenga un ID único sin necesidad de especificarlo manualmente al insertar nuevos registros.
- **Nombre VARCHAR(100)**: Define la columna Nombre para almacenar cadenas de texto, con un máximo de 100 caracteres. VARCHAR es un tipo de dato que se utiliza para cadenas de longitud variable.
- **Email VARCHAR(100)**: Similar a Nombre, esta columna almacena el email del usuario, permitiendo hasta 100 caracteres.
- **Edad INT**: Define la columna Edad para almacenar la edad del usuario como un número entero.
- **PRIMARY KEY (ID)**: Establece la columna ID como la clave primaria de la tabla, garantizando que los valores sean únicos y no nulos.

Este comando crea una tabla básica Usuarios en la base de datos, lista para almacenar datos de los usuarios con garantía de unicidad e identificación clara a través del ID de cada usuario.

Para crear una tabla `Posts` que esté vinculada a la tabla `Usuarios` mediante una relación de clave foránea, puedes usar el siguiente ejemplo de comando SQL. La clave foránea establecerá una relación entre cada post en la tabla `Posts` y un usuario en la tabla `Usuarios`, asegurando que cada post esté asociado a un usuario existente.

    CREATE TABLE posts (
        id INT AUTO_INCREMENT,
        usuario_id INT,
        titulo VARCHAR(255),
        contenido TEXT,
        fecha_publicacion DATETIME,
        PRIMARY KEY (id),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );

**Explicación de cada parte del comando SQL para crear la tabla `Posts`:**

- `PostID INT AUTO_INCREMENT`: 
  - **Descripción:** Define la columna `PostID` como un entero (`INT`) que se autoincrementa automáticamente cada vez que se inserta una nueva fila.
  - **Propósito:** Asegura un identificador único para cada post, facilitando la indexación y búsqueda.

- `UsuarioID INT`: 
  - **Descripción:** Esta columna almacenará el `ID` del usuario (de la tabla `Usuarios`) que ha creado el post.
  - **Propósito:** Actúa como una clave foránea que vincula cada post a un usuario específico de la tabla `Usuarios`, estableciendo una relación entre ambas tablas.

- `Titulo VARCHAR(255)`: 
  - **Descripción:** Define la columna `Titulo` para almacenar el título del post, utilizando el tipo de dato `VARCHAR` con un límite de 255 caracteres.
  - **Propósito:** Permite almacenar títulos de posts, ofreciendo flexibilidad en la longitud del texto hasta el límite especificado.

- `Contenido TEXT`: 
  - **Descripción:** La columna `Contenido` se utiliza para almacenar el cuerpo del post, empleando el tipo de dato `TEXT`.
  - **Propósito:** Adecuado para almacenar textos largos, como el contenido de un post, sin un límite de longitud predefinido.

- `FechaPublicacion DATETIME`: 
  - **Descripción:** Esta columna almacena la fecha y hora en que se publicó el post, utilizando el tipo de dato `DATETIME`.
  - **Propósito:** Permite registrar el momento exacto de la publicación de cada post, facilitando la organización y el orden cronológico de los mismos.

- `PRIMARY KEY (PostID)`: 
  - **Descripción:** Establece la columna `PostID` como la clave primaria de la tabla `Posts`.
  - **Propósito:** Garantiza que cada `PostID` sea único en la tabla, evitando duplicados y permitiendo una identificación eficaz de cada post.

- `FOREIGN KEY (UsuarioID) REFERENCES Usuarios(ID)`: 
  - **Descripción:** Establece la columna `UsuarioID` como una clave foránea que hace referencia a la columna `ID` de la tabla `Usuarios`.
  - **Propósito:** Asegura la integridad referencial entre las tablas `Posts` y `Usuarios`, de modo que solo se puedan insertar en `UsuarioID` valores que ya existan como `ID` en la tabla `Usuarios`, garantizando la validez de las relaciones entre usuarios y sus posts.

Este comando crea una tabla Posts que está directamente vinculada a la tabla Usuarios a través de la clave foránea UsuarioID, permitiendo representar una relación de "usuario posee posts" en la base de datos.

#### Tipos de datos en SQL:
  - Entender los diferentes tipos de datos disponibles en SQL, como `INT`, `VARCHAR`, `DATE`, etc.

#### Restricciones y claves foráneas:
  - Uso de restricciones para definir reglas en los datos de la tabla, como `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`.
