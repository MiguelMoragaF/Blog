--1. Crea usuario blog y asigna todos los permisos
alter session set "_ORACLE_SCRIPT"=true;
CREATE USER blog IDENTIFIED BY "1234";
GRANT ALL PRIVILEGES TO blog;

--2. Crea tablas de acuerdo al modelo de datos
--Crea tabla usuario
CREATE TABLE usuario
(
id NUMBER,
email VARCHAR2(25),
PRIMARY KEY (id)
);

--Crea la tabla post
CREATE TABLE post
(
id NUMBER,
usuario_id NUMBER,
título VARCHAR2(300),
fecha DATE,
PRIMARY KEY (id),
FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);

--Crea tabla comentario
CREATE TABLE comentario
(
id NUMBER,
usuario_id NUMBER,
post_id NUMBER,
texto VARCHAR2(300),
fecha DATE,
PRIMARY KEY (id),
FOREIGN KEY (post_id) REFERENCES post (id),
FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

--3. Inserta los registros
--USUARIOS
INSERT INTO usuario(id, email)
VALUES(1,'usuario01@hotmail.com');
INSERT INTO usuario(id, email)
VALUES(2,'usuario02@gmail.com');
INSERT INTO usuario(id, email)
VALUES(3,'usuario03@gmail.com');
INSERT INTO usuario(id, email)
VALUES(4,'usuario04@hotmail.com');
INSERT INTO usuario(id, email)
VALUES(5,'usuario05@yahoo.com');
INSERT INTO usuario(id, email)
VALUES(6,'usuario06@hotmail.com');
INSERT INTO usuario(id, email)
VALUES(7,'usuario07@yahoo.com');
INSERT INTO usuario(id, email)
VALUES(8,'usuario08@yahoo.com');
INSERT INTO usuario(id, email)
VALUES(9,'usuario09@yahoo.com');

--POST
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(1, 1, '"Post 1: Esto es malo"', TO_DATE('2020-06-29', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(2, 5, '"Post 2: Esto es malo"', TO_DATE('2020-06-20', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(3, 1, '"Post 3: Esto es excelente"', TO_DATE('2020-05-30', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(4, 9, '"Post 4: Esto es bueno"', TO_DATE('2020-05-09', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(5, 7, '"Post 5: Esto es bueno"', TO_DATE('2020-07-10', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(6, 5, '"Post 6: Esto es excelente"', TO_DATE('2020-07-18', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(7, 8, '"Post 7: Esto es excelente"', TO_DATE('2020-07-07', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(8, 5, '"Post 8: Esto es excelente"', TO_DATE('2020-05-14', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(9, 2, '"Post 9: Esto es bueno"', TO_DATE('2020-05-08', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(10, 6, '"Post 10: Esto es bueno"', TO_DATE('2020-06-02', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(11, 4, '"Post 11: Esto es bueno"', TO_DATE('2020-05-05', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(12, 9, '"Post 12: Esto es malo"', TO_DATE('2020-07-23', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(13, 5, '"Post 13: Esto es excelente"', TO_DATE('2020-05-30', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(14, 8, '"Post 14: Esto es excelente"', TO_DATE('2020-05-01', 'yyyy-mm-dd'));
INSERT INTO post(id, usuario_id, título, fecha)
VALUES(15, 7, '"Post 15: Esto es malo"', TO_DATE('2020-06-17', 'yyyy-mm-dd'));

--COMENTARIOS
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(1, 3, 1, '"Este es el comentario 1"', TO_DATE('2020-07-08', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(2, 4, 2, '"Este es el comentario 2"', TO_DATE('2020-06-07', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(3, 6, 3,  '"Este es el comentario 3"', TO_DATE('2020-06-16', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(4, 2, 4, '"Este es el comentario 4"', TO_DATE('2020-06-15', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(5, 6, 5, '"Este es el comentario 5"', TO_DATE('2020-05-014', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(6, 3, 6, '"Este es el comentario 6"', TO_DATE('2020-07-08', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(7, 6, 7, '"Este es el comentario 7"', TO_DATE('2020-05-22', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(8, 6, 8, '"Este es el comentario 8"', TO_DATE('2020-07-09', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(9, 8, 9, '"Este es el comentario 9"', TO_DATE('2020-06-30', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(10, 8, 10, '"Este es el comentario 10"', TO_DATE('2020-06-19', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(11, 5, 11, '"Este es el comentario 11"', TO_DATE('2020-05-09', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(12, 8, 12, '"Este es el comentario 12"', TO_DATE('2020-06-17', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(13, 1, 13, '"Este es el comentario 13"', TO_DATE('2020-05-01', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(14, 2, 14, '"Este es el comentario 14"', TO_DATE('2020-05-31', 'yyyy-mm-dd'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha)
VALUES(15, 4, 15, '"Este es el comentario 15"', TO_DATE('2020-06-28', 'yyyy-mm-dd'));

--4. Selecciona correo, id y título de todos los post publicados por el usuario
SELECT usuario.email, usuario.id, post."TÍTULO" 
FROM usuario
JOIN post 
ON usuario.id=post.usuario_id;

--5. Lista correo, id y detalle de todos los comentarios que NO hayan sido realizados por el usuario email usuario06@hotmail.com
SELECT usuario.email, usuario.id, comentario.id, comentario.texto 
FROM usuario
JOIN comentario 
ON usuario.id=comentario.usuario_id
WHERE usuario.email != 'usuario06@hotmail.com';

--6. Lista los usuarios que no han publicado ningún post
SELECT usuario.id, usuario.email, post.id, post."TÍTULO", post.fecha 
FROM usuario
LEFT JOIN post 
ON usuario.id=post.usuario_id
WHERE post.id IS NULL;

--7. Lista todos los post con sus comentarios
--(incluyendo aquellos que no poseen comentarios)
SELECT post.id, post."TÍTULO", comentario.id, comentario.texto 
FROM post
INNER JOIN comentario
ON post.id=comentario.id;

--8. Lista todos los usuarios que hayan publicado un post en Junio
SELECT usuario.id, usuario.email, post.id, post.fecha, post."TÍTULO" 
FROM usuario
FULL OUTER JOIN post 
ON usuario.id=post.usuario_id
WHERE post.fecha BETWEEN TO_DATE('2020-06-01', 'yyyy-mm-dd') AND TO_DATE('2020-06-30', 'yyyy-mm-dd'); 
