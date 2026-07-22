# 🛠️ Prerequisitos — Instalación de Flutter y dependencias

Antes del workshop, te recomendamos tener todo instalado para aprovechar al máximo la sesión. Si no pudiste instalar todo antes, no te preocupes: la primera parte del Workshop #1 se enfocará en que todos puedan configurar su entorno.

---

## 📹 Video tutorial de instalación

👉 **[https://youtu.be/uyZRzYLujCY](https://youtu.be/uyZRzYLujCY)**

El video cubre la instalación paso a paso en **Windows** y **macOS**. ¡Te lo recomendamos mucho!

---

## 📋 Herramientas necesarias

| Herramienta | Descripción |
|---|---|
| **Visual Studio Code** | Editor de código |
| **Extensión Flutter (VS Code)** | Instala Flutter SDK automáticamente |
| **Git** | Control de versiones |
| **Java SE 21** | JDK requerido por el toolchain de Android |
| **Gradle** | Sistema de build para Android |
| **Chrome** | Navegador para ejecutar Flutter web |
| **Android Studio** *(opcional)* | IDE alternativo y gestor de emuladores |

---

## 🪟 Instalación en Windows

### 1. Instalar Git

1. Ve a [https://git-scm.com/download/win](https://git-scm.com/download/win)
2. Descarga el instalador y ejecútalo
3. Deja todas las opciones por defecto y da clic en **Next** hasta terminar
4. Para verificar, abre una terminal:
   - Presiona `Windows + R`, escribe `cmd` y presiona Enter
   - Escribe:
     ```bash
     git --version
     ```
   - Si ves algo como `git version 2.x.x`, está instalado correctamente ✅

### 2. Instalar Chrome

1. Ve a [https://www.google.com/chrome/](https://www.google.com/chrome/)
2. Descarga e instala normalmente
3. Flutter lo detectará automáticamente como navegador para desarrollo web

### 3. Instalar Java SE 21 (JDK)

1. Ve a [https://www.oracle.com/java/technologies/downloads/#java21](https://www.oracle.com/java/technologies/downloads/#java21)
2. En la sección **Windows**, descarga el instalador **x64 Installer (.exe)**
3. Ejecuta el instalador con las opciones por defecto
4. Ahora necesitas configurar la **variable de entorno** `JAVA_HOME`:

#### ¿Qué es una variable de entorno?

Es como una "dirección" que le dice a tu computadora dónde encontrar un programa. Sin esto, otros programas no sabrán dónde está Java.

#### Cómo configurar JAVA_HOME en Windows:

1. Presiona `Windows + R`, escribe `sysdm.cpl` y presiona Enter
2. Ve a la pestaña **Opciones avanzadas** (o "Advanced")
3. Clic en **Variables de entorno**
4. En la sección **Variables del sistema**, clic en **Nueva**
5. Llena así:
   - **Nombre de la variable**: `JAVA_HOME`
   - **Valor de la variable**: `C:\Program Files\Java\jdk-21` (verifica que esta carpeta exista)
6. Clic en **Aceptar**
7. Ahora busca la variable `Path` en la lista, selecciónala y clic en **Editar**
8. Clic en **Nuevo** y escribe: `%JAVA_HOME%\bin`
9. Clic en **Aceptar** en todas las ventanas

> ⚠️ **Importante:** Cierra y abre una nueva terminal después de hacer esto para que los cambios se apliquen.

10. Verifica abriendo una nueva terminal (`cmd`):
    ```bash
    java --version
    ```
    Deberías ver algo como `java 21.x.x` ✅

### 4. Instalar Visual Studio Code

1. Ve a [https://code.visualstudio.com/](https://code.visualstudio.com/)
2. Descarga el instalador para Windows
3. Ejecuta el instalador:
   - ✅ Marca la opción **"Add to PATH"** (Agregar al PATH) cuando aparezca
   - ✅ Marca **"Register Code as an editor for supported file types"**
4. Completa la instalación

### 5. Instalar la extensión Flutter en VS Code (incluye Flutter SDK)

Esta es la forma más fácil de instalar Flutter, porque la extensión te guía paso a paso:

1. Abre Visual Studio Code
2. En la barra lateral izquierda, clic en el ícono de **Extensiones** (o presiona `Ctrl + Shift + X`)
3. Busca **"Flutter"** y selecciona la extensión oficial (publicada por Dart Code)
4. Clic en **Install**
5. Una vez instalada, VS Code detectará que no tienes Flutter SDK y te mostrará un mensaje para instalarlo:
   - Clic en **"Download SDK"** o el botón que aparezca
   - Selecciona una carpeta de destino (recomendado: `C:\flutter`)
   - La extensión descargará e instalará Flutter automáticamente
   - También intentará agregar Flutter al PATH automáticamente
6. **Reinicia VS Code** después de la instalación
7. Abre una **nueva terminal** (en VS Code: menú Terminal → New Terminal) y verifica:
   ```bash
   flutter --version
   ```
   Si ves la versión de Flutter, ¡está listo! ✅

> 💡 **Si Flutter no se reconoce en la terminal**, significa que no se agregó al PATH automáticamente. Sigue estos pasos para agregarlo manualmente:
>
> 1. Presiona `Windows + R`, escribe `sysdm.cpl` y presiona Enter
> 2. Ve a **Opciones avanzadas** → **Variables de entorno**
> 3. Busca `Path` en las variables del sistema, selecciónala y clic en **Editar**
> 4. Clic en **Nuevo** y escribe la ruta donde se instaló Flutter, por ejemplo: `C:\flutter\bin`
> 5. Clic en **Aceptar** en todas las ventanas
> 6. Cierra y abre una nueva terminal para que tome efecto

### 6. Android Studio *(opcional)*

Solo necesitas esto si quieres probar tu app en un emulador de Android. Para el workshop usaremos Chrome, así que es opcional.

1. Ve a [https://developer.android.com/studio](https://developer.android.com/studio)
2. Descarga e instala con las opciones por defecto
3. En una terminal, acepta las licencias de Android:
   ```bash
   flutter doctor --android-licenses
   ```
   Escribe `y` y presiona Enter en cada pregunta que aparezca.

---

## 🍎 Instalación en macOS

### 1. Instalar Git

macOS usualmente ya lo tiene. Verifica abriendo la **Terminal** (búscala en Spotlight con `Cmd + Espacio`):

```bash
git --version
```

Si no está instalado, te pedirá instalar las Xcode Command Line Tools. Acepta y espera a que termine.

### 2. Instalar Chrome

1. Ve a [https://www.google.com/chrome/](https://www.google.com/chrome/)
2. Descarga e instala normalmente

### 3. Instalar Java SE 21 (JDK)

**Opción A — Con Homebrew** (si lo tienes):
```bash
brew install openjdk@21
```

**Opción B — Descarga manual:**
1. Ve a [https://www.oracle.com/java/technologies/downloads/#java21](https://www.oracle.com/java/technologies/downloads/#java21)
2. En la sección **macOS**, descarga el instalador **DMG**
3. Ejecútalo y sigue los pasos

Verifica:
```bash
java --version
```

Si no reconoce el comando, necesitas agregar Java al PATH. Abre la Terminal y ejecuta:

```bash
echo 'export JAVA_HOME=$(/usr/libexec/java_home -v 21)' >> ~/.zshrc
echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

> 💡 **¿Qué es el PATH?** Es una lista de carpetas donde tu Mac busca los programas cuando escribes un comando. Si un programa no está en el PATH, la terminal no lo encuentra.

### 4. Instalar Visual Studio Code

1. Ve a [https://code.visualstudio.com/](https://code.visualstudio.com/)
2. Descarga la versión para macOS
3. Arrastra la app a la carpeta **Aplicaciones**
4. Abre VS Code y usa `Cmd + Shift + P` → escribe "Shell Command" → selecciona **"Install 'code' command in PATH"**

### 5. Instalar la extensión Flutter en VS Code (incluye Flutter SDK)

1. Abre Visual Studio Code
2. Clic en el ícono de **Extensiones** en la barra lateral (o `Cmd + Shift + X`)
3. Busca **"Flutter"** e instala la extensión oficial (publicada por Dart Code)
4. VS Code detectará que no tienes Flutter SDK y te ofrecerá instalarlo:
   - Clic en **"Download SDK"**
   - Elige una carpeta de destino (recomendado: `~/flutter`)
   - La extensión descargará Flutter y lo configurará
5. **Reinicia VS Code**
6. Abre una nueva terminal y verifica:
   ```bash
   flutter --version
   ```

> 💡 **Si Flutter no se reconoce**, agrégalo al PATH manualmente. Abre la Terminal y ejecuta:
> ```bash
> echo 'export PATH="$HOME/flutter/bin:$PATH"' >> ~/.zshrc
> source ~/.zshrc
> ```
> Luego cierra y abre una nueva terminal.

### 6. Android Studio *(opcional)*

```bash
# Si tienes Homebrew:
brew install --cask android-studio
```

O descárgalo desde [https://developer.android.com/studio](https://developer.android.com/studio).

Luego acepta las licencias:
```bash
flutter doctor --android-licenses
```

---

## ✅ Validación de la instalación

Una vez que tengas todo instalado, abre una terminal y ejecuta:

```bash
flutter doctor
```

Deberías ver algo similar a esto:

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.x.x)
[✓] Chrome - develop for the web
[✓] Visual Studio Code (version x.x.x)
[✓] Java (openjdk x.x.x)
[✓] Connected device (1 available)
[✓] Network resources
```

### ¿Qué hacer si algo falla?

| Error | Solución |
|---|---|
| `[✗] Chrome` | Asegúrate de tener Chrome instalado. En Windows, si lo instalaste en una ruta diferente, configura la variable `CHROME_EXECUTABLE` |
| `[✗] Android toolchain` | Ejecuta `flutter doctor --android-licenses` y acepta todo con `y` |
| `[!] Java` | Verifica que `JAVA_HOME` esté configurado (revisa los pasos de arriba) |
| `flutter: command not found` | Flutter no está en el PATH. Revisa el paso 5 de tu sistema operativo |

### Prueba rápida

Para confirmar que todo funciona, ejecuta esto en la terminal:

```bash
flutter create test_app
cd test_app
flutter run -d chrome
```

Si Chrome se abre con una app de ejemplo, **¡estás listo para el workshop!** 🎉

Después puedes borrar la carpeta `test_app`:
```bash
cd ..
rm -rf test_app
```

En Windows:
```bash
cd ..
rmdir /s /q test_app
```

---

## 💡 Tips finales

- Si tienes dudas, revisa el [video tutorial](https://youtu.be/uyZRzYLujCY) que explica todo con pantalla compartida
- Para este workshop solo necesitamos **Flutter web**, así que si `flutter doctor` muestra warnings sobre Android Studio y no quieres instalar Android Studio, puedes ignorarlos
- Asegúrate de tener buena conexión a internet durante la instalación
- Si algo no funciona y ya intentaste todo, ¡no te preocupes! Llegaremos preparados para ayudarte al inicio del evento

---

**¿Todo listo?** → Continúa con [`flutter-workshop.md`](flutter-workshop.md)
