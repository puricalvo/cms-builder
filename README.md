
# CMS Builder

> CMS dinámico desarrollado íntegramente en PHP con una arquitectura modular basada en tres aplicaciones independientes: **API**, **Dashboard** y **Web**.

CMS Builder permite crear y administrar páginas, módulos personalizados, tablas dinámicas, formularios configurables y relaciones entre tablas sin modificar el código fuente. Además, incorpora autenticación, gestión de usuarios, integración opcional con OpenAI y un sistema de instalación independiente.

---

## ✨ Características principales

- Arquitectura modular.
- API REST propia.
- Dashboard de administración.
- Sitio web público independiente.
- Creación dinámica de páginas.
- Gestión dinámica de módulos.
- Tablas dinámicas.
- Formularios configurables.
- Relaciones entre tablas.
- Gestión de usuarios y administradores.
- Sistema de roles y permisos.
- Recuperación de contraseña por correo electrónico.
- Integración opcional con OpenAI.
- Instalador independiente.
- Configuración mediante archivos `.env`.

---

## 🏗 Arquitectura

El proyecto está dividido en tres aplicaciones independientes:

### API

Gestiona:

- Base de datos.
- Autenticación.
- API REST.
- Gestión de usuarios.
- Operaciones CRUD.

### Dashboard

Panel de administración desde el que es posible:

- Gestionar páginas.
- Crear módulos.
- Administrar contenidos.
- Gestionar usuarios.
- Configurar el sistema.

### Web

Aplicación pública encargada de mostrar el contenido generado desde el Dashboard.

---

## 📂 Estructura del proyecto

```text
cms-builder/
│
├── api/
├── dashboard/
├── web/
├── database/
│   └── cms-builder.sql
│
├── .gitignore
└── README.md
```

---

## 🚀 Instalación

### 1. Clonar el repositorio

```bash
git clone https://github.com/puricalvo/cms-builder.git
```

### 2. Instalar dependencias

#### Dashboard

```bash
cd dashboard
composer install
```

#### Web

```bash
cd web
composer install
```

#### API

```bash
cd api
composer install
```

---

### 3. Base de datos

Importar el archivo:

```
database/cms-builder.sql
```

Puede utilizarse con:

- phpMyAdmin
- Adminer
- MySQL Workbench
- Línea de comandos MySQL

---

## ⚙️ Variables de entorno

Cada aplicación dispone de su propio archivo:

```
.env.example
```

Debe copiarse como:

```
.env
```

y completar las variables correspondientes.

### Dashboard

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

### Web

```env
API_URL=
API_KEY=
```

### API

```env
DB_HOST=
DB_NAME=
DB_USER=
DB_PASS=
```

---

## 🔐 Recuperación de contraseña

CMS Builder incorpora un sistema de recuperación de contraseña mediante correo electrónico.

### Desarrollo local

En entornos como XAMPP, los correos pueden almacenarse en la carpeta:

```
mailoutput/
```

dependiendo de la configuración del servidor.

### Producción

Se recomienda configurar un servidor SMTP mediante:

```env
MAIL_HOST=
MAIL_USER=
MAIL_PASS=
MAIL_PORT=
```

---

## 👥 Roles del sistema

### Superadmin

Permisos completos.

Puede:

- Crear administradores.
- Crear editores.
- Gestionar permisos.
- Crear módulos.
- Eliminar registros.
- Configurar el sistema.

---

### Admin

Puede administrar el contenido del sitio.

No dispone de permisos sobre la configuración crítica del sistema.

---

### Editor

Acceso únicamente a los módulos autorizados por el Superadmin.

---

## 🤖 Integración con OpenAI (Opcional)

CMS Builder permite integrar OpenAI para generar contenido desde formularios dinámicos.

Cada administrador puede configurar sus propias credenciales desde su perfil.

La configuración se almacena individualmente para cada usuario.

Si no se configura OpenAI, el CMS continuará funcionando con normalidad.

---

## ⚙️ Instalador

El instalador del CMS se encuentra en un repositorio independiente:

### CMS Install Builder

https://github.com/puricalvo/cms-install-builder

---

## 🧩 Módulos personalizados

El sistema permite crear módulos personalizados directamente desde el Dashboard.

Al crear un módulo se genera automáticamente la estructura necesaria dentro de:

```
views/pages/custom/
```

incluyendo la carpeta y el archivo PHP correspondientes.

---

## 🔒 Recomendaciones para producción

Antes de desplegar el proyecto se recomienda:

- Cambiar la contraseña del Superadmin.
- Configurar HTTPS.
- Configurar SMTP.
- Revisar permisos de carpetas.
- Programar copias de seguridad.
- Mantener actualizadas las dependencias.

---

## 🌐 Demo

Puedes probar una versión pública del CMS en:

**https://cms-builder.ifree.page**

Repositorio de la demo:

**(Próximamente disponible)**

---

## 🌍 Portfolio

Puedes ver este y otros proyectos en:

https://puricalvo.github.io/mi-porfolio/

---

## 👩‍💻 Autora

**Puri Calvo**

Desarrolladora Full Stack.

CMS Builder ha sido desarrollado íntegramente desde cero como proyecto personal con el objetivo de construir un gestor de contenidos modular, flexible y fácilmente ampliable, aplicando buenas prácticas de arquitectura, organización del código y desarrollo web.

---

## 📄 Licencia

Este proyecto se distribuye con fines educativos y de desarrollo.

Cada desarrollador es responsable de la configuración, seguridad y despliegue en producción.
