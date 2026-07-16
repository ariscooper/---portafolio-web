-- =============================================
-- BASE DE DATOS PARA PORTAFOLIO ZONAJAVA
-- =============================================

-- 1. Crear la base de datos
CREATE DATABASE IF NOT EXISTS portafolio_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- 2. Usar la base de datos
USE portafolio_db;

-- =============================================
-- TABLA: mensajes (formulario de contacto)
-- =============================================
CREATE TABLE mensajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    asunto VARCHAR(200) NOT NULL,
    mensaje TEXT NOT NULL,
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    leido BOOLEAN DEFAULT FALSE
);

-- =============================================
-- TABLA: clases (tus 10 clases/proyectos)
-- =============================================
CREATE TABLE clases (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    descripcion TEXT NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    imagen VARCHAR(255),
    enlace VARCHAR(255),
    github VARCHAR(255),
    orden INT DEFAULT 0,
    activo BOOLEAN DEFAULT TRUE,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =============================================
-- TABLA: perfil (información sobre ti)
-- =============================================
CREATE TABLE perfil (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT,
    email VARCHAR(150) NOT NULL,
    telefono VARCHAR(50),
    ubicacion VARCHAR(150),
    experiencia VARCHAR(50),
    foto VARCHAR(255),
    cv VARCHAR(255)
);

-- =============================================
-- TABLA: habilidades
-- =============================================
CREATE TABLE habilidades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nivel INT DEFAULT 0,
    icono VARCHAR(50)
);

-- =============================================
-- INSERTAR DATOS: 10 clases
-- =============================================
INSERT INTO clases (titulo, descripcion, categoria, orden) VALUES
('Introducción a Java', 'Fundamentos de programación en Java, variables, tipos de datos y operadores.', 'java', 1),
('POO en Java', 'Programación orientada a objetos: clases, objetos, herencia y polimorfismo.', 'java', 2),
('HTML y CSS', 'Estructura y diseño de páginas web con HTML5 y CSS3 moderno.', 'web', 3),
('JavaScript', 'Interactividad web con JavaScript: DOM, eventos y funciones.', 'web', 4),
('MySQL Básico', 'Diseño de bases de datos, tablas, consultas SQL y relaciones.', 'db', 5),
('Jakarta EE', 'Desarrollo de aplicaciones enterprise con Jakarta EE y servlets.', 'java', 6),
('Diseño Responsive', 'Adaptación de sitios web a todos los dispositivos con CSS Grid y Flexbox.', 'web', 7),
('JDBC y Conexión', 'Conexión de Java con bases de datos usando JDBC y patrones DAO.', 'db', 8),
('REST APIs', 'Creación de APIs RESTful con Jakarta REST y JSON.', 'java', 9),
('Proyecto Final', 'Integración completa: frontend, backend y base de datos en un proyecto real.', 'web', 10);

-- =============================================
-- INSERTAR DATOS: Perfil personal
-- =============================================
INSERT INTO perfil (nombre, titulo, descripcion, email, telefono, ubicacion, experiencia) VALUES
('Tu Nombre Completo', 'Desarrollador Full Stack', 
 'Soy un desarrollador apasionado por crear soluciones tecnológicas innovadoras. Tengo experiencia en Java, Jakarta EE y desarrollo web moderno.',
 'tu@email.com', '+123 456 7890', 'Tu Ciudad, País', '2 años');

-- =============================================
-- INSERTAR DATOS: Habilidades
-- =============================================
INSERT INTO habilidades (nombre, nivel, icono) VALUES
('Java / Jakarta EE', 90, 'fa-java'),
('HTML5 / CSS3', 85, 'fa-html5'),
('JavaScript', 80, 'fa-js'),
('MySQL', 75, 'fa-database'),
('Git / GitHub', 70, 'fa-git-alt'),
('REST APIs', 85, 'fa-server');

-- =============================================
-- VERIFICAR QUE TODO ESTÉ CORRECTO
-- =============================================
SELECT 'Base de datos creada exitosamente' AS resultado;
SELECT * FROM clases;
SELECT * FROM perfil;
SELECT * FROM habilidades;
