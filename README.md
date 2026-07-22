# Meetup #3 - Tu primer despliegue en AWS Cloud

![Banner del evento](https://secure.meetupstatic.com/photos/event/7/d/e/8/highres_535292232.webp)

---

## 👋 Bienvenida

¡Bienvenido/a al workshop más práctico del AWS User Group Piura!

En esta sesión vas a crear tu propia aplicación web con Flutter y desplegarla en AWS Cloud usando dos enfoques diferentes. La idea es que no solo escuches conceptos, sino que puedas ponerlos en práctica directamente desde tu laptop.

---

## 📚 Estructura del Workshop

El workshop se divide en **tres partes**:

### 1. 🛠️ Prerequisitos — [`flutter-prerequisites.md`](flutter-prerequisites.md)

Guía de instalación de Flutter y todas sus dependencias. **Si ya las instalaste antes del evento, genial!** Si no, revisa esta guía para ponerte al día.

### 2. 💻 Workshop #1: Flutter — [`flutter-workshop.md`](flutter-workshop.md)

Personaliza tu portafolio web con Flutter, compílalo y visualízalo localmente.

🎤 Instructor: [Giancarlos Sandoval](https://www.linkedin.com/in/giansandoval/)

### 3. ☁️ Workshop #2: AWS Cloud — [`aws-workshop.md`](aws-workshop.md)

Despliega tu aplicación en AWS usando dos enfoques:
- **Amazon S3** como sitio web estático (SPA)
- **Amazon EC2** con un web server levantado manualmente

🎤 Instructor: [Cristhian Becerra](https://www.linkedin.com/in/cristhian-becerra/)

---

## 📁 Estructura del proyecto

```text
workshop-flutter-aws/
├── lib/
│   ├── config/
│   │   └── portfolio_config.dart    # 👈 Tu información editable
│   ├── core/
│   │   ├── theme/                   # Colores y estilos globales
│   │   └── utils/                   # Apertura segura de enlaces
│   ├── features/portfolio/
│   │   ├── portfolio_page.dart
│   │   └── widgets/                 # Secciones reutilizables
│   ├── models/                      # Modelos de datos
│   ├── app.dart
│   └── main.dart
├── assets/images/                   # Imágenes (profile.png, portada.png)
├── flutter-prerequisites.md         # Guía de instalación
├── flutter-workshop.md              # Workshop Flutter
├── aws-workshop.md                  # Workshop AWS
└── README.md                        # Este archivo
```

---

## 🎯 ¿Qué lograrás hoy?

Al terminar el workshop tendrás:
- ✅ Tu portafolio web personalizado con Flutter
- ✅ Tu app desplegada en un bucket S3 como sitio web estático
- ✅ Tu app corriendo en una instancia EC2 accesible desde internet

---

## 🔗 Links útiles

- 📹 [Tutorial de instalación de Flutter](https://youtu.be/uyZRzYLujCY)
- 🌐 [Evento en Meetup](https://www.meetup.com/aws-user-group-piura/events/315600351/)
- 💬 Comunidad: **#AWSUserGroupPiura**

---

## 📄 Licencia

Este proyecto se distribuye bajo la [Licencia MIT](LICENSE).
