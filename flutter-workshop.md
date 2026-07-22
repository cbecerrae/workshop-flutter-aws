# 💻 Workshop #1 — Crea tu primera aplicación web con Flutter

🎤 Instructor: [Giancarlos Sandoval](https://www.linkedin.com/in/giansandoval/)

En este workshop vas a personalizar una plantilla de portafolio profesional con tu propia información, compilarla para web y visualizarla en tu navegador.

---

## 📥 Paso 1: Clonar el proyecto

Si aún no tienes el proyecto, clónalo:

```bash
git clone https://github.com/cbecerrae/workshop-flutter-aws.git
cd workshop-flutter-aws
```

Instala las dependencias:

```bash
flutter pub get
```

---

## ✏️ Paso 2: Personaliza tu portafolio

Abre el archivo `lib/config/portfolio_config.dart`. Este es el **único archivo** que necesitas editar para personalizar tu portafolio.

### Información básica

Cambia estos campos con tu información:

```dart
static const name = 'Tu Nombre';
static const shortName = 'TN';  // Tus iniciales
static const role = 'Tu Rol Profesional';
static const greeting = 'Hola, soy';
static const headline = 'Una frase que te defina profesionalmente.';
static const introduction = 'Una breve descripción de lo que haces.';
static const about = 'Un párrafo más extenso sobre ti, tu experiencia y lo que te apasiona.';
static const location = 'Tu Ciudad, País';
static const email = 'tu@email.com';
static const availability = 'Disponible para nuevos proyectos';
```

### Estadísticas

Personaliza tus métricas:

```dart
static const stats = <PortfolioStat>[
  PortfolioStat(value: '2+', label: 'Años de experiencia'),
  PortfolioStat(value: '5', label: 'Proyectos'),
  PortfolioStat(value: '100%', label: 'Pasión'),
];
```

### Habilidades

Define tus grupos de habilidades:

```dart
static const skillGroups = <SkillGroup>[
  SkillGroup(
    title: 'Frontend',
    icon: Icons.code_rounded,
    skills: ['HTML', 'CSS', 'JavaScript', 'Flutter'],
  ),
  SkillGroup(
    title: 'Backend',
    icon: Icons.storage_rounded,
    skills: ['Python', 'Node.js', 'AWS', 'Firebase'],
  ),
  SkillGroup(
    title: 'Herramientas',
    icon: Icons.handyman_outlined,
    skills: ['Git', 'Docker', 'VS Code', 'Linux'],
  ),
];
```

### Proyectos

Agrega tus propios proyectos (puedes poner tantos como quieras):

```dart
static const projects = <PortfolioProject>[
  PortfolioProject(
    title: 'Mi Proyecto',
    description: 'Descripción breve de lo que hace tu proyecto.',
    technologies: ['Flutter', 'Firebase', 'Dart'],
    url: 'https://github.com/tu-usuario/tu-proyecto',
    icon: Icons.rocket_launch_outlined,
  ),
];
```

### Redes sociales

Agrega tus enlaces:

```dart
static const socials = <SocialLink>[
  SocialLink(
    label: 'GitHub',
    url: 'https://github.com/tu-usuario',
    icon: Icons.code_rounded,
  ),
  SocialLink(
    label: 'LinkedIn',
    url: 'https://linkedin.com/in/tu-usuario',
    icon: Icons.work_outline_rounded,
  ),
];
```

### Foto de perfil

Reemplaza el archivo `assets/images/profile.png` con tu propia foto.

> 💡 **Tip:** Usa una imagen cuadrada (por ejemplo 800×800 px) para que se vea bien en el diseño circular.

---

## 🖥️ Paso 3: Ejecutar en el navegador

Visualiza tu portafolio en Chrome:

```bash
flutter run -d chrome
```

Esto abrirá tu navegador con tu portafolio personalizado. Puedes hacer cambios en el código y ver los resultados con **hot reload** (presiona `r` en la terminal o guarda el archivo).

---

## 📦 Paso 4: Compilar para producción

Una vez que estés conforme con tu portafolio, compílalo para web:

```bash
flutter build web
```

Esto generará los archivos estáticos optimizados en la carpeta:

```
build/web/
├── index.html
├── main.dart.js
├── assets/
├── flutter.js
├── flutter_bootstrap.js
├── manifest.json
└── ...
```

> 📁 Esta es la carpeta que subiremos a AWS en el siguiente workshop.

---

## 🔍 Verificación

Antes de continuar con el despliegue en AWS, verifica que:

- [ ] Tu portafolio muestra tu nombre e información correcta
- [ ] La foto de perfil se ve bien
- [ ] Los enlaces de redes sociales son correctos
- [ ] La carpeta `build/web/` se generó correctamente

---

## 🎨 Personalización extra (opcional)

Si quieres cambiar los colores y el estilo visual de la plantilla, puedes editar:

```
lib/core/theme/app_theme.dart
```

---

## 💡 Consejos

- Escribe las URLs completas incluyendo `https://`
- Para el correo solo cambia el campo `email`; la plantilla crea el enlace `mailto:` automáticamente
- Puedes agregar o quitar elementos de cualquier lista (`projects`, `skillGroups`, `stats`, `socials`)
- Si algo no se ve bien, revisa que no falten comas ni paréntesis en el código Dart

---

**¿Tu portafolio está listo?** → Continúa con [`aws-workshop.md`](aws-workshop.md) para desplegarlo en la nube ☁️
