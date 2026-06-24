
# CMS Builder

CMS dinámico desarrollado en PHP con arquitectura separada en tres aplicaciones:

* **API** → Gestión de datos y autenticación.
* **Dashboard** → Panel de administración.
* **Web** → Sitio web público.

El sistema permite crear páginas, módulos, tablas dinámicas, formularios personalizados, relaciones entre tablas, gestión de usuarios y generación de contenido mediante OpenAI (opcional).

# Estructura del proyecto

---
```text
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
* Apache con mod_rewrite habilitado
* Composer

# Instalación

## 1. Clonar el proyecto

---
```bash
git clone REPOSITORIO.git
```
---

o copiar la carpeta completa al servidor.

## 2. Instalar dependencias

### Dashboard

Entrar en:

---
```bash
cd dashboard
```
---

Ejecutar:

---
```bash
composer install
```
---

### Web

Entrar en:

---
```bash
cd web
```
---

Ejecutar:

---
```bash
composer install
```
---

### API

Si la API utiliza Composer:

---
```bash
cd api
composer install
```
---

# Base de datos

Importar el archivo:

---
```text
cms_builder.sql
```
---

mediante:

* phpMyAdmin
* Adminer
* MySQL Workbench
* línea de comandos

# Variables de entorno

Cada aplicación utiliza su propio archivo `.env`.

Crear el archivo `.env` copiando el contenido de `.env.template`.

## Dashboard

---
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

---
```env
API_URL=
API_KEY=
```
---

## API

Configurar las variables correspondientes a la conexión de base de datos.

Ejemplo:

---
```env
DB_HOST=
DB_NAME=
DB_USER=
DB_PASS=
```
---

# Roles de usuario

## Superadmin

Permisos completos sobre el sistema.

Puede:

* Crear administradores.
* Crear editores.
* Gestionar permisos.
* Crear módulos.
* Eliminar registros.
* Configurar el sistema.

## Admin

Acceso a todas las páginas y contenidos.

No puede:

* Crear administradores.
* Eliminar administradores.
* Ejecutar determinadas acciones críticas del sistema.

## Editor

Permisos limitados asignados por el Superadmin.

Puede acceder únicamente a los módulos autorizados.

# OpenAI (Opcional)

El sistema permite utilizar OpenAI para generar contenido desde formularios dinámicos.

Las credenciales no se incluyen en el proyecto.

Cada administrador puede configurar sus propias credenciales desde su perfil:

* Token OpenAI
* Organization ID (si aplica)

Si no se configuran credenciales, el CMS seguirá funcionando normalmente.

# Módulos personalizados

El sistema permite crear módulos personalizados desde el Dashboard.

Al crear un módulo personalizado se genera automáticamente:

---
```text
views/pages/custom/
```
---

con una carpeta y un archivo PHP asociados al nombre del módulo.

El archivo generado contiene una estructura de ejemplo que debe ser modificada por el desarrollador según las necesidades del proyecto.

# Seguridad

Antes de poner el proyecto en producción se recomienda:

* Cambiar la contraseña del Superadmin.
* Configurar SMTP.
* Configurar HTTPS.
* Revisar permisos de carpetas.
* Configurar copias de seguridad periódicas.

# Licencia

Este proyecto se distribuye únicamente con fines educativos y de desarrollo.

Cada desarrollador es responsable de la configuración y despliegue en producción.

