<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Portafolio | Zonajava</title>
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

    <!-- ========== MENÚ DE NAVEGACIÓN ========== -->
    <nav class="navbar" id="navbar">
        <div class="nav-container">
            <a href="#inicio" class="logo">Zona<span>Java</span></a>
            <ul class="nav-menu" id="nav-menu">
                <li><a href="#inicio" class="nav-link active">Inicio</a></li>
                <li><a href="#sobre-mi" class="nav-link">Sobre Mí</a></li>
                <li><a href="#clases" class="nav-link">Clases</a></li>
                <li><a href="#contacto" class="nav-link">Contacto</a></li>
            </ul>
            <div class="hamburger" id="hamburger">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </nav>

    <!-- ========== SECCIÓN INICIO / HERO ========== -->
    <section class="hero" id="inicio">
        <div class="hero-content">
            <div class="hero-text">
                <p class="greeting">¡Hola! 👋</p>
                <h1>Soy <span class="highlight">Tu Nombre</span></h1>
                <h2 class="typing-text">Desarrollador <span id="typed-text"></span></h2>
                <p class="hero-description">
                    Apasionado por la tecnología y el desarrollo de software. 
                    Aquí encontrarás mis proyectos, clases y más.
                </p>
                <div class="hero-buttons">
                    <a href="#clases" class="btn btn-primary">Ver Clases</a>
                    <a href="#contacto" class="btn btn-secondary">Contáctame</a>
                </div>
                <div class="social-links">
                    <a href="#" class="social-link"><i class="fab fa-github"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-linkedin"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="hero-image">
                <div class="image-wrapper">
                    <img src="img/perfil.png" alt="Foto de perfil" class="profile-img">
                </div>
            </div>
        </div>
        <div class="scroll-indicator">
            <i class="fas fa-chevron-down"></i>
        </div>
    </section>

    <!-- ========== SECCIÓN SOBRE MÍ ========== -->
    <section class="about" id="sobre-mi">
        <div class="container">
            <h2 class="section-title">Sobre <span class="highlight">Mí</span></h2>
            <div class="about-content">
                <div class="about-image">
                    <img src="img/about.png" alt="Sobre mí">
                </div>
                <div class="about-text">
                    <h3>Desarrollador Full Stack</h3>
                    <p>
                        Soy un desarrollador apasionado por crear soluciones tecnológicas innovadoras. 
                        Tengo experiencia en desarrollo web con Java, Jakarta EE, y tecnologías frontend 
                        modernas. Me encanta aprender nuevas tecnologías y compartir conocimiento.
                    </p>
                    <div class="about-info">
                        <div class="info-item">
                            <i class="fas fa-user"></i>
                            <span><strong>Nombre:</strong> Tu Nombre Completo</span>
                        </div>
                        <div class="info-item">
                            <i class="fas fa-envelope"></i>
                            <span><strong>Email:</strong> tu@email.com</span>
                        </div>
                        <div class="info-item">
                            <i class="fas fa-map-marker-alt"></i>
                            <span><strong>Ubicación:</strong> Tu Ciudad, País</span>
                        </div>
                        <div class="info-item">
                            <i class="fas fa-briefcase"></i>
                            <span><strong>Experiencia:</strong> X años</span>
                        </div>
                    </div>
                    <a href="img/cv.pdf" download class="btn btn-primary">
                        <i class="fas fa-download"></i> Descargar CV
                    </a>
                </div>
            </div>

            <!-- Habilidades -->
            <div class="skills-section">
                <h3 class="skills-title">Mis Habilidades</h3>
                <div class="skills-grid">
                    <div class="skill-card">
                        <i class="fab fa-java"></i>
                        <h4>Java / Jakarta EE</h4>
                        <div class="skill-bar"><div class="skill-progress" style="width: 90%"></div></div>
                    </div>
                    <div class="skill-card">
                        <i class="fab fa-html5"></i>
                        <h4>HTML5 / CSS3</h4>
                        <div class="skill-bar"><div class="skill-progress" style="width: 85%"></div></div>
                    </div>
                    <div class="skill-card">
                        <i class="fab fa-js"></i>
                        <h4>JavaScript</h4>
                        <div class="skill-bar"><div class="skill-progress" style="width: 80%"></div></div>
                    </div>
                    <div class="skill-card">
                        <i class="fas fa-database"></i>
                        <h4>MySQL / Bases de Datos</h4>
                        <div class="skill-bar"><div class="skill-progress" style="width: 75%"></div></div>
                    </div>
                    <div class="skill-card">
                        <i class="fab fa-git-alt"></i>
                        <h4>Git / GitHub</h4>
                        <div class="skill-bar"><div class="skill-progress" style="width: 70%"></div></div>
                    </div>
                    <div class="skill-card">
                        <i class="fas fa-server"></i>
                        <h4>REST APIs</h4>
                        <div class="skill-bar"><div class="skill-progress" style="width: 85%"></div></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ========== SECCIÓN CLASES / PROYECTOS (10) ========== -->
    <section class="classes" id="clases">
        <div class="container">
            <h2 class="section-title">Mis <span class="highlight">Clases</span></h2>
            <p class="section-subtitle">Explora mis 10 clases y proyectos destacados</p>

            <div class="filter-buttons">
                <button class="filter-btn active" data-filter="all">Todas</button>
                <button class="filter-btn" data-filter="java">Java</button>
                <button class="filter-btn" data-filter="web">Web</button>
                <button class="filter-btn" data-filter="db">Base de Datos</button>
            </div>

            <div class="classes-grid">

                <!-- Clase 1 -->
                <div class="class-card" data-category="java">
                    <div class="card-image">
                        <img src="img/clase1.png" alt="Clase 1">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Java</span>
                        <h3>Clase 1 - Introducción a Java</h3>
                        <p>Fundamentos de programación en Java, variables, tipos de datos y operadores.</p>
                    </div>
                </div>

                <!-- Clase 2 -->
                <div class="class-card" data-category="java">
                    <div class="card-image">
                        <img src="img/clase2.png" alt="Clase 2">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Java</span>
                        <h3>Clase 2 - POO en Java</h3>
                        <p>Programación orientada a objetos: clases, objetos, herencia y polimorfismo.</p>
                    </div>
                </div>

                <!-- Clase 3 -->
                <div class="class-card" data-category="web">
                    <div class="card-image">
                        <img src="img/clase3.png" alt="Clase 3">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Web</span>
                        <h3>Clase 3 - HTML y CSS</h3>
                        <p>Estructura y diseño de páginas web con HTML5 y CSS3 moderno.</p>
                    </div>
                </div>

                <!-- Clase 4 -->
                <div class="class-card" data-category="web">
                    <div class="card-image">
                        <img src="img/clase4.png" alt="Clase 4">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Web</span>
                        <h3>Clase 4 - JavaScript</h3>
                        <p>Interactividad web con JavaScript: DOM, eventos y funciones.</p>
                    </div>
                </div>

                <!-- Clase 5 -->
                <div class="class-card" data-category="db">
                    <div class="card-image">
                        <img src="img/clase5.png" alt="Clase 5">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Base de Datos</span>
                        <h3>Clase 5 - MySQL Básico</h3>
                        <p>Diseño de bases de datos, tablas, consultas SQL y relaciones.</p>
                    </div>
                </div>

                <!-- Clase 6 -->
                <div class="class-card" data-category="java">
                    <div class="card-image">
                        <img src="img/clase6.png" alt="Clase 6">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Java</span>
                        <h3>Clase 6 - Jakarta EE</h3>
                        <p>Desarrollo de aplicaciones enterprise con Jakarta EE y servlets.</p>
                    </div>
                </div>

                <!-- Clase 7 -->
                <div class="class-card" data-category="web">
                    <div class="card-image">
                        <img src="img/clase7.png" alt="Clase 7">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Web</span>
                        <h3>Clase 7 - Diseño Responsive</h3>
                        <p>Adaptación de sitios web a todos los dispositivos con CSS Grid y Flexbox.</p>
                    </div>
                </div>

                <!-- Clase 8 -->
                <div class="class-card" data-category="db">
                    <div class="card-image">
                        <img src="img/clase8.png" alt="Clase 8">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Base de Datos</span>
                        <h3>Clase 8 - JDBC y Conexión</h3>
                        <p>Conexión de Java con bases de datos usando JDBC y patrones DAO.</p>
                    </div>
                </div>

                <!-- Clase 9 -->
                <div class="class-card" data-category="java">
                    <div class="card-image">
                        <img src="img/clase9.png" alt="Clase 9">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Java</span>
                        <h3>Clase 9 - REST APIs</h3>
                        <p>Creación de APIs RESTful con Jakarta REST y JSON.</p>
                    </div>
                </div>

                <!-- Clase 10 -->
                <div class="class-card" data-category="web">
                    <div class="card-image">
                        <img src="img/clase10.png" alt="Clase 10">
                        <div class="card-overlay">
                            <a href="#" class="card-link"><i class="fas fa-link"></i></a>
                            <a href="#" class="card-link"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <span class="card-tag">Web</span>
                        <h3>Clase 10 - Proyecto Final</h3>
                        <p>Integración completa: frontend, backend y base de datos en un proyecto real.</p>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ========== SECCIÓN CONTACTO ========== -->
    <section class="contact" id="contacto">
        <div class="container">
            <h2 class="section-title">Contác<span class="highlight">tame</span></h2>
            <div class="contact-content">
                <div class="contact-info">
                    <h3>¿Tienes alguna pregunta?</h3>
                    <p>¡No dudes en escribirme! Estoy disponible para proyectos y colaboraciones.</p>
                    <div class="contact-details">
                        <div class="contact-item">
                            <i class="fas fa-envelope"></i>
                            <span>tu@email.com</span>
                        </div>
                        <div class="contact-item">
                            <i class="fas fa-phone"></i>
                            <span>+123 456 7890</span>
                        </div>
                        <div class="contact-item">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>Tu Ciudad, País</span>
                        </div>
                    </div>
                </div>
                <form class="contact-form" id="contact-form">
                    <div class="form-group">
                        <input type="text" id="nombre" name="nombre" placeholder="Tu nombre" required>
                    </div>
                    <div class="form-group">
                        <input type="email" id="email" name="email" placeholder="Tu email" required>
                    </div>
                    <div class="form-group">
                        <input type="text" id="asunto" name="asunto" placeholder="Asunto" required>
                    </div>
                    <div class="form-group">
                        <textarea id="mensaje" name="mensaje" rows="5" placeholder="Tu mensaje" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">
                        <i class="fas fa-paper-plane"></i> Enviar Mensaje
                    </button>
                    <div id="form-message" class="form-message"></div>
                </form>
            </div>
        </div>
    </section>

    <!-- ========== FOOTER ========== -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-logo">
                    <h3>Zona<span>Java</span></h3>
                    <p>Desarrollo web con pasión y tecnología.</p>
                </div>
                <div class="footer-links">
                    <h4>Enlaces</h4>
                    <ul>
                        <li><a href="#inicio">Inicio</a></li>
                        <li><a href="#sobre-mi">Sobre Mí</a></li>
                        <li><a href="#clases">Clases</a></li>
                        <li><a href="#contacto">Contacto</a></li>
                    </ul>
                </div>
                <div class="footer-social">
                    <h4>Sígueme</h4>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-github"></i></a>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2026 ZonaJava. Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>

    <!-- Botón volver arriba -->
    <a href="#inicio" class="back-to-top" id="backToTop">
        <i class="fas fa-arrow-up"></i>
    </a>

    <script src="js/script.js"></script>
    <script src="js/animaciones.js"></script>
</body>
</html>
