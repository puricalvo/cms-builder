
# CMS Builder

**Autor:** Puri Calvo

CMS dinámico desarrollado en PHP con arquitectura separada en tres aplicaciones:

* **API** → Gestión de datos, autenticación y comunicación con la base de datos.
* **Dashboard** → Panel de administración del sistema.
* **Web** → Sitio web público y generación de contenido.

El sistema permite crear páginas, módulos personalizados, tablas dinámicas, formularios configurables, relaciones entre tablas, gestión de usuarios y generación de contenido mediante OpenAI (opcional).

---

# El instalador inicial del sistema se encuentra en:

https://github.com/puricalvo/cms-install-builder

---

---

# Estructura del proyecto

```
cms-builder/
│
├── api/
├── dashboard/
├── web/
├── database/
│   └── cms-builder.sql
└── README.md
```

---

# Requisitos

* PHP 8.0 o superior
* MySQL 5.7+ / MariaDB 10+
* Apache con `mod_rewrite` habilitado
* Composer

---

# Instalación

## 1. Clonar el proyecto

```bash
git clone REPOSITORIO.git
```

o copiar la carpeta completa al servidor.

---

## 2. Instalar dependencias

### Dashboard

Entrar en:

```bash
cd dashboard
```

Ejecutar:

```bash
composer install
```

---

### Web

Entrar en:

```bash
cd web
```

Ejecutar:

```bash
composer install
```

---

### API

Si la API utiliza Composer:

```bash
cd api
```

Ejecutar:

```bash
composer install
```

---

# Base de datos

Importar el archivo:

```
database/cms-builder.sql
```

mediante cualquiera de estas herramientas:

* phpMyAdmin
* Adminer
* MySQL Workbench
* Línea de comandos MySQL

---

# Variables de entorno

Cada aplicación utiliza su propio archivo `.env`.

Crear el archivo `.env` copiando el contenido de `.env.template`.

---

## Dashboard

```env
API_URL=

API_KEY=

MAIL_HOST=
MAIL_USER=
MAIL_PASS=
MAIL_PORT=

OPENAI_TOKEN=
OPENAI_ORG=
```

---

## Web

```env
API_URL=

API_KEY=
```

---

## API

Configurar las variables correspondientes a la conexión con la base de datos:

```env
DB_HOST=
DB_NAME=
DB_USER=
DB_PASS=
```

# Recuperación de contraseña

El sistema incorpora una funcionalidad de recuperación de contraseña mediante correo electrónico.

El usuario puede solicitar el restablecimiento de su contraseña introduciendo la dirección de correo electrónico asociada a su cuenta.

## Desarrollo local

Durante el desarrollo en un entorno local (por ejemplo, XAMPP), los correos electrónicos pueden almacenarse en el sistema de correo configurado para el entorno, como la carpeta `mailoutput`, en lugar de enviarse a una dirección de correo real.

## Producción

Para un entorno de producción se recomienda configurar un servidor SMTP mediante las siguientes variables de entorno:

```env
MAIL_HOST=
MAIL_USER=
MAIL_PASS=
MAIL_PORT=
```

Con esta configuración, los correos de recuperación de contraseña se enviarán directamente al destinatario.
 

## Roles de usuario

## Superadmin

Dispone de permisos completos sobre el sistema.

Puede:

* Crear administradores.
* Crear editores.
* Gestionar permisos.
* Crear módulos.
* Eliminar registros.
* Configurar el sistema.

---

## Admin

Tiene acceso a páginas y contenidos del sistema.

No puede:

* Crear administradores.
* Eliminar administradores.
* Ejecutar determinadas acciones críticas del sistema.

---

## Editor

Dispone de permisos limitados asignados por el Superadmin.

Puede acceder únicamente a los módulos autorizados.

---

# OpenAI (Opcional)

El sistema permite utilizar OpenAI para generar contenido desde formularios dinámicos.

Las credenciales no se incluyen en el proyecto.

Cada administrador puede configurar su propia integración con OpenAI.

La configuración se almacena asociada al administrador mediante el campo:

```
chatgpt_code_admin
```

Este valor permite gestionar la configuración individual de OpenAI por usuario administrador.

Si no se configuran credenciales, el CMS seguirá funcionando normalmente.

---

# Instalador

El sistema incluye un instalador inicial mediante:

```
install.php
```

El instalador permite configurar la instalación inicial del CMS y seleccionar las fuentes disponibles para generar la configuración necesaria del sistema.

---

# Módulos personalizados

El sistema permite crear módulos personalizados desde el Dashboard.

Al crear un módulo personalizado se genera automáticamente:

```
views/pages/custom/
```

con una carpeta y un archivo PHP asociados al nombre del módulo.

El archivo generado contiene una estructura inicial que puede ser modificada por el desarrollador según las necesidades del proyecto.

---

# Seguridad

Antes de poner el proyecto en producción se recomienda:

* Cambiar la contraseña del Superadmin.
* Configurar SMTP.
* Configurar HTTPS.
* Revisar permisos de carpetas.
* Configurar copias de seguridad periódicas.
* Mantener actualizadas las dependencias.

---

# Licencia

Este proyecto se distribuye únicamente con fines educativos y de desarrollo.

Cada desarrollador es responsable de la configuración, seguridad y despliegue en producción.

---

# Autor

**Puri Calvo**
