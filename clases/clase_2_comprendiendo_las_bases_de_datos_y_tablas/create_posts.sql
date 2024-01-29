CREATE TABLE posts (
    id INT AUTO_INCREMENT,
    usuario_id INT,
    titulo VARCHAR(255),
    contenido TEXT,
    fecha_publicacion DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);