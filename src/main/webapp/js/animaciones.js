// ========== EFECTO DE ESCRITURA (TYPING) ==========
const textos = ['Web', 'Full Stack', 'Java', 'Backend', 'Frontend'];
let textoIndex = 0;
let charIndex = 0;
let isDeleting = false;
const typedElement = document.getElementById('typed-text');

function efectoTyping() {
    const textoActual = textos[textoIndex];

    if (isDeleting) {
        typedElement.textContent = textoActual.substring(0, charIndex - 1);
        charIndex--;
    } else {
        typedElement.textContent = textoActual.substring(0, charIndex + 1);
        charIndex++;
    }

    let velocidad = isDeleting ? 50 : 100;

    if (!isDeleting && charIndex === textoActual.length) {
        velocidad = 2000;
        isDeleting = true;
    } else if (isDeleting && charIndex === 0) {
        isDeleting = false;
        textoIndex = (textoIndex + 1) % textos.length;
        velocidad = 500;
    }

    setTimeout(efectoTyping, velocidad);
}

efectoTyping();

// ========== ANIMACIÓN AL HACER SCROLL (Intersection Observer) ==========
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, observerOptions);

// Aplicar animación a elementos
document.querySelectorAll('.class-card, .skill-card, .info-item').forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(30px)';
    el.style.transition = 'all 0.6s ease';
    observer.observe(el);
});

// ========== ANIMACIÓN DE BARRAS DE HABILIDADES ==========
const skillObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            const progress = entry.target;
            const width = progress.style.width;
            progress.style.width = '0%';
            setTimeout(() => {
                progress.style.width = width;
            }, 200);
        }
    });
}, { threshold: 0.5 });

document.querySelectorAll('.skill-progress').forEach(bar => {
    skillObserver.observe(bar);
});

// ========== EFECTO PARALLAX SUAVE EN HERO ==========
window.addEventListener('scroll', () => {
    const scrolled = window.scrollY;
    const hero = document.querySelector('.hero');
    if (hero && scrolled < window.innerHeight) {
        hero.style.backgroundPositionY = scrolled * 0.5 + 'px';
    }
});

// ========== CONTADOR ANIMADO (opcional) ==========
function animarContador(elemento, objetivo, duracion) {
    let inicio = 0;
    const incremento = objetivo / (duracion / 16);
    const timer = setInterval(() => {
        inicio += incremento;
        if (inicio >= objetivo) {
            elemento.textContent = objetivo;
            clearInterval(timer);
        } else {
            elemento.textContent = Math.floor(inicio);
        }
    }, 16);
}