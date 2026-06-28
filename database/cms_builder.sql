-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 28-06-2026 a las 10:59:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cms_builder`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `rol_admin` text DEFAULT NULL,
  `permissions_admin` text DEFAULT '{}',
  `email_admin` text DEFAULT NULL,
  `password_admin` text DEFAULT NULL,
  `token_admin` text DEFAULT NULL,
  `token_exp_admin` text DEFAULT NULL,
  `status_admin` int(11) DEFAULT 1,
  `title_admin` text DEFAULT NULL,
  `symbol_admin` text DEFAULT NULL,
  `font_admin` text DEFAULT NULL,
  `color_admin` text DEFAULT NULL,
  `back_admin` text DEFAULT NULL,
  `scode_admin` text DEFAULT NULL,
  `chatgpt_admin` text DEFAULT '{}',
  `date_created_admin` date DEFAULT NULL,
  `date_updated_admin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `chatgpt_code_admin` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `rol_admin`, `permissions_admin`, `email_admin`, `password_admin`, `token_admin`, `token_exp_admin`, `status_admin`, `title_admin`, `symbol_admin`, `font_admin`, `color_admin`, `back_admin`, `scode_admin`, `chatgpt_admin`, `date_created_admin`, `date_updated_admin`, `chatgpt_code_admin`) VALUES
(1, 'superadmin', '{\"todo\":\"on\"}', 'admin@dashboard.com', '', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3ODI1ODgzNDMsImV4cCI6MTc4MjY3NDc0MywiZGF0YSI6eyJpZCI6MSwiZW1haWwiOiJhZG1pbkBkYXNoYm9hcmQuY29tIn19.gTcD5X9AO9vClPSOeDbjKFcLNMUHSFvA_BJhXYduC8U', '1782674743', 1, 'Inshot', '<i class=\"bi bi-back\"></i>', '<link href=\"https://fonts.googleapis.com/css2?family=IBM Plex Sans:ital,wght@0,100..700;1,100..700&display=swap\" rel=\"stylesheet\">', '#1788de', 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee7cbac6.jpg', '8fgnxt', '{\"\":\"\"}', '2026-06-13', '2026-06-28 08:53:45', '<br>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id_blog` int(11) NOT NULL,
  `title_blog` text DEFAULT NULL,
  `gallery_blog` text DEFAULT NULL,
  `tags_blog` text DEFAULT NULL,
  `abstract_blog` text DEFAULT NULL,
  `url_blog` text DEFAULT NULL,
  `article_blog` longtext DEFAULT NULL,
  `order_blog` int(11) DEFAULT 0,
  `ai_blog` longtext DEFAULT NULL,
  `date_created_blog` date DEFAULT NULL,
  `date_updated_blog` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id_blog`, `title_blog`, `gallery_blog`, `tags_blog`, `abstract_blog`, `url_blog`, `article_blog`, `order_blog`, `ai_blog`, `date_created_blog`, `date_updated_blog`) VALUES
(1, 'Blog post title', 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee6a1a36.jpg,http://cms-builder-dash.com/views/assets/files/6a2ed8ee4a0876.jpg,http://cms-builder-dash.com/views/assets/files/6a2ed8ee6b1896.jpg', 'desing,photography,fashion', 'Vestibulum orci felis, ullamcorper non condimentum non, ultrices ac nunc. Mauris non ligula suscipit, vulputate mi accumsan, dapibus felis. Nullam sed sapien dui. Nulla auctor sit amet sem non porta. Praesent eu massa vel diam laoreet elementum ac sed felis. Donec suscipit ultricies risus sed mollis. Donec volutpat porta risus posuere imperdiet. Sed viverra dolor sed dolor placerat ornare ut . Integer iaculis tellus nulla, quis imperdiet magna venenatis vitae..', 'blog-post-title', '<p>Vestibulum orci felis, ullamcorper non condimentum non, <span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">ultrices ac nunc. Mauris non ligula suscipit, vulputate mi </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">accumsan, dapibus felis. Nullam sed sapien dui. Nulla auctor </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">sit amet sem non porta. Integer iaculis tellus nulla, quis </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">imperdiet magna venenatis vitae..</span></p><p>Ut nec hinc dolor possim. An eros argumentum vel, elit diceret <span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">duo eu, quo et aliquid ornatus delicatissimi. Cu nam tale ferri </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">utroque, eu habemus albucius mel, cu vidit possit ornatus eum. </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">Eu ius postulant salutatus definitionem, explicari. Graeci </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">viderer qui ut, at habeo facer solet usu. Pri choro pertinax </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">indoctum ne, ad partiendo persecuti forensibus est.</span></p><blockquote class=\"blockquote\">Vestibulum id ligula porta felis euismod semper. Sed posuere <span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">consectetur est at lobortis. Aenean eu leo quam. Pellentesque </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">ornare sem lacinia quam venenatis vestibulum. Duis mollis, est </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">non commodo luctus, nisi erat porttitor ligula, eget lacinia </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">odio sem nec elit. Donec ullamcorper nulla non metus auctor </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">fringilla. Vestibulum id ligula porta felis euismod semper.</span></blockquote><p>Ut nec hinc dolor possim. An eros argumentum vel, elit diceret <span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">duo eu, quo et aliquid ornatus delicatissimi. Cu nam tale ferri </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">utroque, eu habemus albucius mel, cu vidit possit ornatus eum. </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">Eu ius postulant salutatus definitionem, an e trud erroribus </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">explicari. Graeci viderer qui ut, at habeo facer solet usu. Pri </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">choro pertinax indoctum ne, ad partiendo persecuti forensibus </span><span style=\"font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 1rem;\">est.</span></p>', 1, '\"Reflejos Históricos: La Torre del Oro al Atardecer\"', '2026-06-14', '2026-06-23 08:03:51'),
(2, 'Living+my+dream', 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee6b3f76.jpg%2Chttp%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee82e6d6.jpg%2Chttp%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee7cbac6.jpg', 'desing%2Cphotography%2Cfashion', 'Vestibulum+orci+felis%2C+ullamcorper+non+condimentum+non%2C+ultrices+ac+nunc.+Mauris+non+ligula+suscipit%2C+vulputate+mi+accumsan%2C+dapibus+felis.+Nullam+sed+sapien+dui.+Nulla+auctor+sit+amet+sem+non+porta.+Praesent+eu+massa+vel+diam+laoreet+elementum+ac+sed+felis.+Donec+suscipit+ultricies+risus+sed+mollis.+Donec+volutpat+porta+risus+posuere+imperdiet.+Sed+viverra+dolor+sed+dolor+placerat+ornare+ut+.+Integer+iaculis+tellus+nulla%2C+quis+imperdiet+magna+venenatis+vitae..', 'living-my-dream', '%3Cp%3EVestibulum+orci+felis%2C+ullamcorper+non+condimentum+non%2C%C2%A0%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eultrices+ac+nunc.+Mauris+non+ligula+suscipit%2C+vulputate+mi%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eaccumsan%2C+dapibus+felis.+Nullam+sed+sapien+dui.+Nulla+auctor%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Esit+amet+sem+non+porta.+Integer+iaculis+tellus+nulla%2C+quis%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eimperdiet+magna+venenatis+vitae..%3C%2Fspan%3E%3C%2Fp%3E%3Cp%3EUt+nec+hinc+dolor+possim.+An+eros+argumentum+vel%2C+elit+diceret%C2%A0%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eduo+eu%2C+quo+et+aliquid+ornatus+delicatissimi.+Cu+nam+tale+ferri%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eutroque%2C+eu+habemus+albucius+mel%2C+cu+vidit+possit+ornatus+eum.%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3EEu+ius+postulant+salutatus+definitionem%2C+explicari.+Graeci%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eviderer+qui+ut%2C+at+habeo+facer+solet+usu.+Pri+choro+pertinax%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eindoctum+ne%2C+ad+partiendo+persecuti+forensibus+est.%3C%2Fspan%3E%3C%2Fp%3E%3Cblockquote+class%3D%22blockquote%22%3EVestibulum+id+ligula+porta+felis+euismod+semper.+Sed+posuere%C2%A0%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Econsectetur+est+at+lobortis.+Aenean+eu+leo+quam.+Pellentesque%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eornare+sem+lacinia+quam+venenatis+vestibulum.+Duis+mollis%2C+est%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Enon+commodo+luctus%2C+nisi+erat+porttitor+ligula%2C+eget+lacinia%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eodio+sem+nec+elit.+Donec+ullamcorper+nulla+non+metus+auctor%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Efringilla.+Vestibulum+id+ligula+porta+felis+euismod+semper.%3C%2Fspan%3E%3C%2Fblockquote%3E%3Cp%3EUt+nec+hinc+dolor+possim.+An+eros+argumentum+vel%2C+elit+diceret%C2%A0%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eduo+eu%2C+quo+et+aliquid+ornatus+delicatissimi.+Cu+nam+tale+ferri%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eutroque%2C+eu+habemus+albucius+mel%2C+cu+vidit+possit+ornatus+eum.%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3EEu+ius+postulant+salutatus+definitionem%2C+an+e+trud+erroribus%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eexplicari.+Graeci+viderer+qui+ut%2C+at+habeo+facer+solet+usu.+Pri%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Echoro+pertinax+indoctum+ne%2C+ad+partiendo+persecuti+forensibus%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eest.%3C%2Fspan%3E%3C%2Fp%3E', 2, NULL, '2026-06-14', '2026-06-22 17:58:18'),
(3, 'Sunny+side+up', 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee828776.jpg%2Chttp%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee8ac0d6.jpg%2Chttp%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee940186.jpg', 'desing%2Cphotography%2Cfashion', 'Vestibulum+orci+felis%2C+ullamcorper+non+condimentum+non%2C+ultrices+ac+nunc.+Mauris+non+ligula+suscipit%2C+vulputate+mi+accumsan%2C+dapibus+felis.+Nullam+sed+sapien+dui.+Nulla+auctor+sit+amet+sem+non+porta.+Praesent+eu+massa+vel+diam+laoreet+elementum+ac+sed+felis.+Donec+suscipit+ultricies+risus+sed+mollis.+Donec+volutpat+porta+risus+posuere+imperdiet.+Sed+viverra+dolor+sed+dolor+placerat+ornare+ut+.+Integer+iaculis+tellus+nulla%2C+quis+imperdiet+magna+venenatis+vitae..', 'sunny-side-up', '%3Cp%3EVestibulum+orci+felis%2C+ullamcorper+non+condimentum+non%2C%C2%A0%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eultrices+ac+nunc.+Mauris+non+ligula+suscipit%2C+vulputate+mi%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eaccumsan%2C+dapibus+felis.+Nullam+sed+sapien+dui.+Nulla+auctor%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Esit+amet+sem+non+porta.+Integer+iaculis+tellus+nulla%2C+quis%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eimperdiet+magna+venenatis+vitae..%3C%2Fspan%3E%3C%2Fp%3E%3Cp%3EUt+nec+hinc+dolor+possim.+An+eros+argumentum+vel%2C+elit+diceret%C2%A0%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eduo+eu%2C+quo+et+aliquid+ornatus+delicatissimi.+Cu+nam+tale+ferri%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eutroque%2C+eu+habemus+albucius+mel%2C+cu+vidit+possit+ornatus+eum.%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3EEu+ius+postulant+salutatus+definitionem%2C+explicari.+Graeci%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eviderer+qui+ut%2C+at+habeo+facer+solet+usu.+Pri+choro+pertinax%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eindoctum+ne%2C+ad+partiendo+persecuti+forensibus+est.%3C%2Fspan%3E%3C%2Fp%3E%3Cblockquote+class%3D%22blockquote%22%3EVestibulum+id+ligula+porta+felis+euismod+semper.+Sed+posuere%C2%A0%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Econsectetur+est+at+lobortis.+Aenean+eu+leo+quam.+Pellentesque%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eornare+sem+lacinia+quam+venenatis+vestibulum.+Duis+mollis%2C+est%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Enon+commodo+luctus%2C+nisi+erat+porttitor+ligula%2C+eget+lacinia%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eodio+sem+nec+elit.+Donec+ullamcorper+nulla+non+metus+auctor%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Efringilla.+Vestibulum+id+ligula+porta+felis+euismod+semper.%3C%2Fspan%3E%3C%2Fblockquote%3E%3Cp%3EUt+nec+hinc+dolor+possim.+An+eros+argumentum+vel%2C+elit+diceret%C2%A0%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eduo+eu%2C+quo+et+aliquid+ornatus+delicatissimi.+Cu+nam+tale+ferri%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eutroque%2C+eu+habemus+albucius+mel%2C+cu+vidit+possit+ornatus+eum.%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3EEu+ius+postulant+salutatus+definitionem%2C+an+e+trud+erroribus%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eexplicari.+Graeci+viderer+qui+ut%2C+at+habeo+facer+solet+usu.+Pri%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Echoro+pertinax+indoctum+ne%2C+ad+partiendo+persecuti+forensibus%C2%A0%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+system-ui%2C+-apple-system%2C+%22Segoe+UI%22%2C+Roboto%2C+%22Helvetica+Neue%22%2C+Arial%2C+%22Noto+Sans%22%2C+%22Liberation+Sans%22%2C+sans-serif%2C+%22Apple+Color+Emoji%22%2C+%22Segoe+UI+Emoji%22%2C+%22Segoe+UI+Symbol%22%2C+%22Noto+Color+Emoji%22%3B+font-size%3A+1rem%3B%22%3Eest.%3C%2Fspan%3E%3C%2Fp%3E', 3, NULL, '2026-06-14', '2026-06-22 17:58:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `title_category` text DEFAULT NULL,
  `class_category` text DEFAULT NULL,
  `chatgpt_admin` longtext DEFAULT NULL,
  `date_created_category` date DEFAULT NULL,
  `date_updated_category` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `title_category`, `class_category`, `chatgpt_admin`, `date_created_category`, `date_updated_category`) VALUES
(1, 'Nature', 'nature', NULL, '2026-06-14', '2026-06-14 16:32:30'),
(2, 'Models', 'models', NULL, '2026-06-14', '2026-06-14 16:33:25'),
(3, 'People', 'people', NULL, '2026-06-14', '2026-06-14 16:34:06'),
(4, 'Outdoor', 'outdoor', NULL, '2026-06-14', '2026-06-14 16:35:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `columns`
--

CREATE TABLE `columns` (
  `id_column` int(11) NOT NULL,
  `id_module_column` int(11) DEFAULT 0,
  `title_column` text DEFAULT NULL,
  `alias_column` text DEFAULT NULL,
  `type_column` text DEFAULT NULL,
  `matrix_column` text DEFAULT NULL,
  `visible_column` int(11) DEFAULT 1,
  `date_created_column` date DEFAULT NULL,
  `date_updated_column` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `columns`
--

INSERT INTO `columns` (`id_column`, `id_module_column`, `title_column`, `alias_column`, `type_column`, `matrix_column`, `visible_column`, `date_created_column`, `date_updated_column`) VALUES
(1, 2, 'rol_admin', 'rol', 'select', 'superadmin,admin,editor', 1, '2026-06-13', '2026-06-13 18:56:45'),
(2, 2, 'permissions_admin', 'permisos', 'object', '', 1, '2026-06-13', '2026-06-13 18:56:45'),
(3, 2, 'email_admin', 'email', 'email', '', 1, '2026-06-13', '2026-06-16 22:44:09'),
(4, 2, 'password_admin', 'pass', 'password', '', 0, '2026-06-13', '2026-06-15 14:27:06'),
(5, 2, 'token_admin', 'token', 'text', '', 0, '2026-06-13', '2026-06-13 18:56:45'),
(6, 2, 'token_exp_admin', 'expiración', 'text', '', 0, '2026-06-13', '2026-06-13 18:56:46'),
(7, 2, 'status_admin', 'estado', 'boolean', '', 1, '2026-06-13', '2026-06-13 18:56:46'),
(8, 2, 'title_admin', 'título', 'text', '', 0, '2026-06-13', '2026-06-13 18:56:46'),
(9, 2, 'symbol_admin', 'simbolo', 'text', '', 0, '2026-06-13', '2026-06-13 18:56:46'),
(10, 2, 'font_admin', 'tipografía', 'text', '', 0, '2026-06-13', '2026-06-13 18:56:46'),
(11, 2, 'color_admin', 'color', 'color', '', 0, '2026-06-13', '2026-06-26 16:06:10'),
(12, 2, 'back_admin', 'fondo', 'text', '', 0, '2026-06-13', '2026-06-13 18:56:46'),
(13, 4, 'name_profile', 'Nombre', 'text', NULL, 1, '2026-06-14', '2026-06-14 05:24:28'),
(14, 4, 'about_profile', 'Perfil', 'text', NULL, 1, '2026-06-14', '2026-06-14 05:24:28'),
(15, 4, 'phone_profile', 'Celular', 'text', NULL, 1, '2026-06-14', '2026-06-14 05:24:29'),
(16, 4, 'email_profile', 'Email', 'text', NULL, 1, '2026-06-14', '2026-06-14 05:24:29'),
(17, 4, 'image_profile', 'Imagen', 'image', NULL, 1, '2026-06-14', '2026-06-14 05:24:29'),
(18, 4, 'description_profile', 'Descripción', 'textarea', NULL, 1, '2026-06-14', '2026-06-14 05:24:29'),
(19, 4, 'video_profile', 'Video', 'video', NULL, 1, '2026-06-14', '2026-06-14 05:24:29'),
(20, 4, 'socials_profile', 'Redes', 'json', NULL, 0, '2026-06-14', '2026-06-14 16:31:32'),
(21, 6, 'title_category', 'Título', 'text', NULL, 1, '2026-06-14', '2026-06-14 05:30:34'),
(22, 6, 'class_category', 'Clases CSS', 'text', NULL, 1, '2026-06-14', '2026-06-14 05:30:34'),
(23, 8, 'file_photo', 'Foto', 'image', NULL, 1, '2026-06-14', '2026-06-14 05:35:45'),
(24, 8, 'title_photo', 'Título', 'text', NULL, 1, '2026-06-14', '2026-06-14 05:35:45'),
(25, 8, 'description_photo', 'Descripción', 'textarea', NULL, 1, '2026-06-14', '2026-06-14 05:35:45'),
(26, 8, 'categories_photo', 'Categorías', 'array', NULL, 1, '2026-06-14', '2026-06-14 05:35:45'),
(27, 10, 'title_blog', 'Título', 'text', NULL, 1, '2026-06-14', '2026-06-14 05:42:45'),
(28, 10, 'gallery_blog', 'Galeria', 'array', NULL, 1, '2026-06-14', '2026-06-14 05:42:45'),
(29, 10, 'tags_blog', 'Etiquetas', 'array', NULL, 1, '2026-06-14', '2026-06-14 05:42:46'),
(30, 10, 'abstract_blog', 'Resumen', 'textarea', NULL, 1, '2026-06-14', '2026-06-14 05:42:46'),
(31, 10, 'url_blog', 'Link', 'link', NULL, 1, '2026-06-14', '2026-06-14 05:42:46'),
(32, 10, 'article_blog', 'Artículo', 'code', NULL, 0, '2026-06-14', '2026-06-14 20:50:53'),
(33, 4, 'logo_profile', 'Logo', 'image', NULL, 1, '2026-06-14', '2026-06-14 20:41:35'),
(34, 8, 'class_photo', 'Clase Cuadrícula', 'text', NULL, 0, '2026-06-15', '2026-06-15 06:24:07'),
(40, 8, 'id_category_photo', 'Rel. Categoria', 'relations', 'categories', 1, '2026-06-18', '2026-06-18 06:06:13'),
(43, 4, 'json_profile', 'JSON', 'json', NULL, 0, '2026-06-20', '2026-06-20 07:07:35'),
(44, 2, 'scode_admin', 'Seguridad', 'text', NULL, 0, '2026-06-20', '2026-06-20 14:57:05'),
(45, 10, 'order_blog', 'Orden', 'order', NULL, 1, '2026-06-20', '2026-06-20 17:27:20'),
(46, 10, 'ai_blog', 'ChatGPT', 'chatgpt', 'escribe el tirulo de una foto con la torre del oro\r\n					', 0, '2026-06-21', '2026-06-23 08:03:21'),
(47, 15, 'title_store', 'Título', 'text', NULL, 1, '2026-06-21', '2026-06-21 17:01:20'),
(48, 15, 'price_store', 'Precio', 'money', NULL, 1, '2026-06-21', '2026-06-21 17:01:20'),
(49, 15, 'description_store', 'Descripción', 'textarea', NULL, 1, '2026-06-21', '2026-06-21 17:01:20'),
(50, 15, 'category_store', 'Categoría', 'text', NULL, 1, '2026-06-21', '2026-06-21 17:01:20'),
(51, 15, 'image_store', 'Imagen', 'image', NULL, 1, '2026-06-21', '2026-06-21 17:01:20'),
(52, 15, 'rate_store', 'Promedio', 'double', NULL, 1, '2026-06-21', '2026-06-21 17:01:21'),
(53, 15, 'count_store', 'Calificaciones', 'int', NULL, 1, '2026-06-21', '2026-06-21 17:01:21'),
(54, 2, 'chatgpt_admin', 'ChatGPT', 'object', NULL, 0, '2026-06-23', '2026-06-23 04:17:05'),
(56, 6, 'chatgpt_admin', 'ChatGPT', 'chatgpt', NULL, 1, '2026-06-27', '2026-06-27 20:35:33'),
(57, 2, 'chatgpt_code_admin', 'ChatGPT', 'chatgpt', '', 0, '2026-06-28', '2026-06-28 08:52:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id_file` int(11) NOT NULL,
  `id_folder_file` int(11) DEFAULT 0,
  `name_file` text DEFAULT NULL,
  `extension_file` text DEFAULT NULL,
  `type_file` text DEFAULT NULL,
  `size_file` double DEFAULT 0,
  `link_file` text DEFAULT NULL,
  `thumbnail_vimeo_file` text DEFAULT NULL,
  `id_mailchimp_file` text DEFAULT NULL,
  `date_created_file` date DEFAULT NULL,
  `date_updated_file` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id_file`, `id_folder_file`, `name_file`, `extension_file`, `type_file`, `size_file`, `link_file`, `thumbnail_vimeo_file`, `id_mailchimp_file`, `date_created_file`, `date_updated_file`) VALUES
(1, 1, '1 (2)', 'jpg', 'image/jpeg', 45011, 'http://cms-builder-dash.com/views/assets/files/6a2ecff91d72a53.jpg', NULL, NULL, '2026-06-14', '2026-06-14 15:59:53'),
(2, 1, '22', 'jpg', 'image/jpeg', 158467, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee4a0876.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(3, 1, '23', 'jpg', 'image/jpeg', 136923, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee4d94e6.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(4, 1, '19', 'jpg', 'image/jpeg', 333758, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee4c9b76.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(5, 1, '24', 'jpg', 'image/jpeg', 163587, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee4b9c16.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(6, 1, '25', 'jpg', 'image/jpeg', 94758, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee4da236.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(7, 1, '20', 'jpg', 'image/jpeg', 243725, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee4db4d6.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(8, 1, 'about-sb', 'jpg', 'image/jpeg', 53700, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee626d76.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(9, 1, '26', 'jpg', 'image/jpeg', 195415, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee645206.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(10, 1, '1', 'jpg', 'image/jpeg', 189034, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee6a1a36.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(11, 1, '4', 'jpg', 'image/jpeg', 186576, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee6b1896.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(12, 1, 'video-banner', 'jpg', 'image/jpeg', 390964, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee6e7b76.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(13, 1, '5', 'jpg', 'image/jpeg', 353214, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee6b3f76.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(14, 1, '9', 'jpg', 'image/jpeg', 290364, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee7cbac6.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(15, 1, '7', 'jpg', 'image/jpeg', 223762, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee7d5d56.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(16, 1, '2', 'jpg', 'image/jpeg', 102998, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee80bb26.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(17, 1, '8', 'jpg', 'image/jpeg', 172754, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee82e6d6.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(18, 1, '10', 'jpg', 'image/jpeg', 310662, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee828776.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(19, 1, '11', 'jpg', 'image/jpeg', 228419, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee8ac0d6.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(20, 1, '17', 'jpg', 'image/jpeg', 206686, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee941d86.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(21, 1, '14', 'jpg', 'image/jpeg', 251635, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee940186.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(22, 1, '12', 'jpg', 'image/jpeg', 102661, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee95b746.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(23, 1, '15', 'jpg', 'image/jpeg', 390964, 'http://cms-builder-dash.com/views/assets/files/6a2ed8eea0f1f6.jpg', NULL, NULL, '2026-06-14', '2026-06-14 16:38:06'),
(24, 1, 'logo', 'png', 'image/png', 3538, 'http://cms-builder-dash.com/views/assets/files/6a2f12337641827.png', NULL, NULL, '2026-06-14', '2026-06-14 20:42:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE `folders` (
  `id_folder` int(11) NOT NULL,
  `name_folder` text DEFAULT NULL,
  `size_folder` text DEFAULT NULL,
  `total_folder` double DEFAULT 0,
  `max_upload_folder` text DEFAULT NULL,
  `url_folder` text DEFAULT NULL,
  `keys_folder` text DEFAULT NULL,
  `date_created_folder` date DEFAULT NULL,
  `date_updated_folder` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `folders`
--

INSERT INTO `folders` (`id_folder`, `name_folder`, `size_folder`, `total_folder`, `max_upload_folder`, `url_folder`, `keys_folder`, `date_created_folder`, `date_updated_folder`) VALUES
(1, 'Server', '200000000000', 4829575, '500000000', 'http://cms-builder-dash.com', NULL, '2026-06-13', '2026-06-14 20:42:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id_module` int(11) NOT NULL,
  `id_page_module` int(11) DEFAULT 0,
  `type_module` text DEFAULT NULL,
  `title_module` text DEFAULT NULL,
  `suffix_module` text DEFAULT NULL,
  `content_module` text DEFAULT NULL,
  `width_module` int(11) DEFAULT 100,
  `editable_module` int(11) DEFAULT 1,
  `date_created_module` date DEFAULT NULL,
  `date_updated_module` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id_module`, `id_page_module`, `type_module`, `title_module`, `suffix_module`, `content_module`, `width_module`, `editable_module`, `date_created_module`, `date_updated_module`) VALUES
(1, 2, 'breadcrumbs', 'Administradores', NULL, NULL, 100, 1, '2026-06-13', '2026-06-13 18:56:45'),
(2, 2, 'tables', 'admins', 'admin', '', 100, 0, '2026-06-13', '2026-06-16 09:41:34'),
(3, 4, 'breadcrumbs', 'perfiles', '', '', 100, 1, '2026-06-14', '2026-06-14 05:17:58'),
(4, 4, 'tables', 'profiles', 'profile', '', 100, 1, '2026-06-14', '2026-06-14 05:24:28'),
(5, 5, 'breadcrumbs', 'categorías', '', '', 100, 1, '2026-06-14', '2026-06-14 05:28:11'),
(6, 5, 'tables', 'categories', 'category', '', 100, 1, '2026-06-14', '2026-06-14 05:30:34'),
(7, 6, 'breadcrumbs', 'fotos', '', '', 100, 1, '2026-06-14', '2026-06-14 05:32:23'),
(8, 6, 'tables', 'photos', 'photo', '', 100, 1, '2026-06-14', '2026-06-14 05:35:45'),
(9, 7, 'breadcrumbs', 'blog', '', '', 100, 1, '2026-06-14', '2026-06-14 05:38:30'),
(10, 7, 'tables', 'blogs', 'blog', '', 100, 1, '2026-06-14', '2026-06-14 05:42:45'),
(11, 1, 'metrics', 'categorias', '', '{\"type\":\"total\",\"table\":\"categories\", \"column\":\"id_category\",\"config\":\"unit\",\"icon\":\"bi bi-list-ul\",\"color\":\"137, 39, 236\"  }', 33, 1, '2026-06-15', '2026-06-15 07:35:39'),
(12, 1, 'metrics', 'fotos', '', '{\"type\":\"total\",\"table\":\"photos\", \"column\":\"id_photo\",\"config\":\"unit\",\"icon\":\"bi bi-camera-fill\",\"color\":\"108, 95, 252\"  }', 33, 1, '2026-06-15', '2026-06-15 07:39:12'),
(13, 1, 'metrics', 'articulos', '', '{\"type\":\"total\",\"table\":\"blogs\", \"column\":\"id_blog\",\"config\":\"unit\",\"icon\":\"bi bi-card-heading\",\"color\":\"9, 173, 149\"  }', 33, 1, '2026-06-15', '2026-06-15 07:41:26'),
(14, 14, 'breadcrumbs', 'tienda', '', '', 100, 1, '2026-06-21', '2026-06-21 16:55:07'),
(15, 14, 'tables', 'stores', 'store', '', 100, 1, '2026-06-21', '2026-06-21 17:01:20'),
(16, 1, 'graphics', 'ventas 2024', '', '{\"type\":\"line\",\"table\":\"sales\",\"xAxis\":\"date_sale\",\"yAxis\":\"profit_sale\",\"color\":\"252, 115, 3\"}', 50, 1, '2026-06-24', '2026-06-24 03:32:43'),
(17, 1, 'graphics', 'ventas', '', '{\"type\":\"bar\",\"table\":\"sales\",\"xAxis\":\"date_sale\",\"yAxis\":\"profit_sale\",\"color\":\"236, 130, 239\"}', 50, 1, '2026-06-24', '2026-06-24 03:35:57'),
(20, 1, 'custom', 'mi_modulo', '', '', 100, 1, '2026-06-24', '2026-06-24 07:10:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id_page` int(11) NOT NULL,
  `title_page` text DEFAULT NULL,
  `url_page` text DEFAULT NULL,
  `icon_page` text DEFAULT NULL,
  `type_page` text DEFAULT NULL,
  `order_page` int(11) DEFAULT 1,
  `menu_type_page` int(11) NOT NULL DEFAULT 0,
  `parent_id_page` int(11) NOT NULL DEFAULT 0,
  `date_created_page` date DEFAULT NULL,
  `date_updated_page` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id_page`, `title_page`, `url_page`, `icon_page`, `type_page`, `order_page`, `menu_type_page`, `parent_id_page`, `date_created_page`, `date_updated_page`) VALUES
(1, 'Inicio', 'inicio', 'bi bi-house-door-fill', 'modules', 1, 0, 0, '2026-06-13', '2026-06-13 18:56:45'),
(2, 'Admins', 'admins', 'bi bi-person-fill-gear', 'modules', 2, 0, 0, '2026-06-13', '2026-06-13 18:56:45'),
(3, 'Archivos', 'archivos', 'bi bi-file-earmark-image', 'custom', 3, 0, 0, '2026-06-13', '2026-06-13 18:56:45'),
(4, 'Perfiles', 'perfiles', 'bi bi-people-fill', 'modules', 4, 0, 0, '2026-06-14', '2026-06-21 15:27:57'),
(5, 'Categorías', 'categorias', 'bi bi-list-task', 'modules', 5, 0, 0, '2026-06-14', '2026-06-21 15:27:57'),
(6, 'Fotos', 'fotos', 'bi bi-camera-fill', 'modules', 6, 0, 0, '2026-06-14', '2026-06-21 15:27:56'),
(7, 'Blog', 'blog', 'bi bi-file-earmark-medical', 'modules', 7, 0, 0, '2026-06-14', '2026-06-21 15:27:57'),
(8, 'Padre 1', '...', 'bi bi-0-square-fill', 'submenu', 8, 1, 0, '2026-06-21', '2026-06-21 15:27:57'),
(9, 'Hijo 1', 'hijo1', 'bi bi-1-square', 'modules', 9, 2, 8, '2026-06-21', '2026-06-21 15:28:34'),
(10, 'Hijo 2', 'hijo2', 'bi bi-2-square', 'modules', 10, 2, 8, '2026-06-21', '2026-06-21 15:28:34'),
(11, 'Padre 2', '...', 'bi bi-0-circle-fill', 'submenu', 11, 1, 0, '2026-06-21', '2026-06-21 15:27:57'),
(12, 'Hija 1', 'hija1', 'bi bi-1-square-fill', 'modules', 12, 2, 11, '2026-06-21', '2026-06-21 15:28:31'),
(13, 'Hija 2', 'hija2', 'bi bi-2-square-fill', 'modules', 13, 2, 11, '2026-06-21', '2026-06-21 15:28:31'),
(14, 'Tienda', 'tienda', 'bi bi-shop', 'modules', 1000, 0, 0, '2026-06-21', '2026-06-21 16:53:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photos`
--

CREATE TABLE `photos` (
  `id_photo` int(11) NOT NULL,
  `file_photo` text DEFAULT NULL,
  `title_photo` text DEFAULT NULL,
  `description_photo` text DEFAULT NULL,
  `categories_photo` text DEFAULT NULL,
  `class_photo` text DEFAULT NULL,
  `id_category_photo` int(11) DEFAULT 0,
  `date_created_photo` date DEFAULT NULL,
  `date_updated_photo` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `photos`
--

INSERT INTO `photos` (`id_photo`, `file_photo`, `title_photo`, `description_photo`, `categories_photo`, `class_photo`, `id_category_photo`, `date_created_photo`, `date_updated_photo`) VALUES
(1, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee6a1a36.jpg', 'Shutter+Up', 'Here+you+can+place+an+optional+description+of+your++Project', 'nature', NULL, 0, '2026-06-14', '2026-06-14 16:49:04'),
(2, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee80bb26.jpg', 'Shutter+Up', 'Here+you+can+place+an+optional+description+of+your++Project', 'nature', NULL, 0, '2026-06-14', '2026-06-14 16:59:56'),
(3, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee941d86.jpg', 'The+Picture+Patch', 'Here+you+can+place+an+optional+description+of+your++Project', 'people', NULL, 0, '2026-06-14', '2026-06-14 17:01:39'),
(4, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee6b1896.jpg', 'Natural+Light+Photography', 'Here+you+can+place+an+optional+description+of+your++Project', 'outdoor%2Cpeople', NULL, 0, '2026-06-14', '2026-06-14 17:03:34'),
(5, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee6b3f76.jpg', 'In The Moment', 'Here you can place an optional description of your  Project', 'outdoor,nature', 'gallery-item-second', 0, '2026-06-14', '2026-06-15 06:25:13'),
(6, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee645206.jpg', 'Picture+Perfect', 'Here+you+can+place+an+optional+description+of+your++Project', 'models%2Cnature', NULL, 0, '2026-06-14', '2026-06-14 17:07:21'),
(7, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee7d5d56.jpg', 'Lens+Queen', 'Here+you+can+place+an+optional+description+of+your++Project', 'outdoor%2Cnature', NULL, 0, '2026-06-14', '2026-06-14 17:09:05'),
(8, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee82e6d6.jpg', 'Artsy+Lens', 'Here+you+can+place+an+optional+description+of+your++Project', 'models', NULL, 0, '2026-06-14', '2026-06-14 17:10:08'),
(9, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee7cbac6.jpg', 'Laura%27s+Tilted+Tripod', 'Here+you+can+place+an+optional+description+of+your++Project', 'people', NULL, 0, '2026-06-14', '2026-06-14 17:11:54'),
(10, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee828776.jpg', 'Lensation+Picture+Studio', 'Here+you+can+place+an+optional+description+of+your++Project', 'outdoor%2Cpeople', NULL, 0, '2026-06-14', '2026-06-14 17:13:14'),
(11, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee8ac0d6.jpg', 'Picturesque', 'Here+you+can+place+an+optional+description+of+your++Project', 'nature%2Cmodels', NULL, 0, '2026-06-14', '2026-06-14 17:14:30'),
(12, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee95b746.jpg', 'Awesome+Offspring', 'Here+you+can+place+an+optional+description+of+your++Project', 'outdoor%2Cpeople', NULL, 0, '2026-06-14', '2026-06-14 17:16:10'),
(13, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee4a0876.jpg', 'Kiss the Bride', 'Here you can place an optional description of your  Project', 'nature', '', 3, '2026-06-14', '2026-06-22 15:25:11'),
(14, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee4c9b76.jpg', 'Bright+Diamond', 'Here+you+can+place+an+optional+description+of+your++Project', 'outdoor', NULL, 0, '2026-06-14', '2026-06-14 17:23:43'),
(15, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee4b9c16.jpg', 'In+a+Pinch', 'Here+you+can+place+an+optional+description+of+your++Project', 'models%2Cpeople', NULL, 0, '2026-06-14', '2026-06-14 17:25:26'),
(16, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee4db4d6.jpg', 'Captured+Moments', 'Here+you+can+place+an+optional+description+of+your++Project', 'models%2Cpeople', NULL, 0, '2026-06-14', '2026-06-14 17:26:48'),
(17, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F6a2ed8ee4da236.jpg', 'Perfectly+Posed+Photo', 'Here+you+can+place+an+optional+description+of+your++Project', 'models%2Cpeople', NULL, 0, '2026-06-14', '2026-06-14 17:28:25'),
(18, 'http://cms-builder-dash.com/views/assets/files/6a2ed8ee4d94e6.jpg', 'Perfectly Posed Photo', 'Here you can place an optional description of your  Project', 'models,people', '', 1, '2026-06-14', '2026-06-18 14:03:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE `profiles` (
  `id_profile` int(11) NOT NULL,
  `name_profile` text DEFAULT NULL,
  `about_profile` text DEFAULT NULL,
  `phone_profile` text DEFAULT NULL,
  `email_profile` text DEFAULT NULL,
  `image_profile` text DEFAULT NULL,
  `description_profile` text DEFAULT NULL,
  `video_profile` text DEFAULT NULL,
  `socials_profile` text DEFAULT '[]',
  `logo_profile` text DEFAULT NULL,
  `json_profile` text DEFAULT '[]',
  `date_created_profile` date DEFAULT NULL,
  `date_updated_profile` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profiles`
--

INSERT INTO `profiles` (`id_profile`, `name_profile`, `about_profile`, `phone_profile`, `email_profile`, `image_profile`, `description_profile`, `video_profile`, `socials_profile`, `logo_profile`, `json_profile`, `date_created_profile`, `date_updated_profile`) VALUES
(1, 'Benny Kowalsky', 'Photographer / Designer', '7 (111) 123456789', 'yourmail@domain.com', 'http://cms-builder-dash.com/views/assets/files/6a2ecff91d72a53.jpg', 'Lorem ipsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur Nulla fringilla purus at leo dignissim congue. Mauris elementum .', 'https://vimeo.com/77416730', '[{\"tipo\":\"facebook\",\"icon\":\"<i class=\\\"bi bi-facebook\\\"></i>\",\"link\":\"https://facebook.com\"},{\"tipo\":\"twitter\",\"icon\":\"<i class=\\\"bi bi-twitter\\\"></i>\",\"link\":\"https://twitter.com\"},{\"tipo\":\"instagram\",\"icon\":\"<i class=\\\"bi bi-instagram\\\"></i>\",\"link\":\"https://instagram.com\"},{\"tipo\":\"pinterest\",\"icon\":\"<i class=\\\"bi bi-pinterest\\\"></i>\",\"link\":\"https://pinterest.com\"},{\"tipo\":\"tumblr\",\"icon\":\"<i class=\\\"fab fa-tumblr\\\"></i>\",\"link\":\"https://tumblr.com\"}]', 'http://cms-builder-dash.com/views/assets/files/6a2f12337641827.png', '[{\"prop1\":\"val1\",\"prop2\":\"val2\"}]', '2026-06-14', '2026-06-20 07:07:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id_sale` int(11) NOT NULL,
  `profit_sale` double NOT NULL DEFAULT 0,
  `date_sale` text DEFAULT NULL,
  `date_created_sale` date DEFAULT NULL,
  `date_updated_sale` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id_sale`, `profit_sale`, `date_sale`, `date_created_sale`, `date_updated_sale`) VALUES
(1, 10000, '2024-01', '2024-01-10', '2024-10-16 03:41:48'),
(2, 30000, '2024-01', '2024-01-21', '2024-10-16 03:41:48'),
(3, 23000, '2024-01', '2024-01-25', '2024-10-16 03:41:48'),
(4, 43560, '2024-01', '2024-01-31', '2024-10-16 03:41:48'),
(5, 50060, '2024-02', '2024-02-01', '2024-10-16 03:41:48'),
(6, 59428, '2024-02', '2024-02-11', '2024-10-16 03:41:48'),
(7, 68796, '2024-02', '2024-02-15', '2024-10-16 03:41:48'),
(8, 78164, '2024-02', '2024-02-17', '2024-10-16 03:41:48'),
(9, 87532, '2024-02', '2024-02-10', '2024-10-16 03:41:48'),
(10, 96900, '2024-03', '2024-03-21', '2024-10-16 03:41:48'),
(11, 106268, '2024-03', '2024-03-25', '2024-10-16 03:41:48'),
(12, 115636, '2024-03', '2024-03-31', '2024-10-16 03:41:48'),
(13, 125004, '2024-03', '2024-03-01', '2024-10-16 03:41:48'),
(14, 134372, '2024-03', '2024-03-11', '2024-10-16 03:41:48'),
(15, 143740, '2024-03', '2024-03-15', '2024-10-16 03:41:48'),
(16, 153108, '2024-03', '2024-03-17', '2024-10-16 03:41:48'),
(17, 162476, '2024-04', '2024-04-10', '2024-10-16 03:41:48'),
(18, 171844, '2024-04', '2024-04-21', '2024-10-16 03:41:48'),
(19, 181212, '2024-04', '2024-04-25', '2024-10-16 03:41:48'),
(20, 190580, '2024-04', '0000-00-00', '2024-10-16 03:41:48'),
(21, 199948, '2024-04', '2024-04-01', '2024-10-16 03:41:48'),
(22, 209316, '2024-04', '2024-04-11', '2024-10-16 03:41:48'),
(23, 218684, '2024-04', '2024-04-15', '2024-10-16 03:41:48'),
(24, 228052, '2024-04', '2024-04-17', '2024-10-16 03:41:48'),
(25, 237420, '2024-04', '2024-04-10', '2024-10-16 03:41:48'),
(26, 246788, '2024-04', '2024-04-21', '2024-10-16 03:41:48'),
(27, 256156, '2024-04', '2024-04-25', '2024-10-16 03:41:48'),
(28, 265524, '2024-04', '0000-00-00', '2024-10-16 03:41:48'),
(29, 274892, '2024-05', '2024-05-01', '2024-10-16 03:41:48'),
(30, 284260, '2024-05', '2024-05-11', '2024-10-16 03:41:48'),
(31, 293628, '2024-05', '2024-05-15', '2024-10-16 03:41:48'),
(32, 302996, '2024-05', '2024-05-17', '2024-10-16 03:41:48'),
(33, 312364, '2024-06', '2024-06-10', '2024-10-16 03:41:48'),
(34, 321732, '2024-06', '2024-06-21', '2024-10-16 03:41:48'),
(35, 331100, '2024-06', '2024-06-25', '2024-10-16 03:41:48'),
(36, 340468, '2024-06', '2024-06-30', '2024-10-16 03:41:48'),
(37, 349836, '2024-06', '2024-06-10', '2024-10-16 03:41:48'),
(38, 359204, '2024-07', '2024-07-21', '2024-10-16 03:41:48'),
(39, 368572, '2024-07', '2024-07-25', '2024-10-16 03:41:48'),
(40, 377940, '2024-07', '2024-07-31', '2024-10-16 03:41:48'),
(41, 387308, '2024-07', '2024-07-01', '2024-10-16 03:41:48'),
(42, 396676, '2024-07', '2024-07-11', '2024-10-16 03:41:48'),
(43, 406044, '2024-07', '2024-07-15', '2024-10-16 03:41:48'),
(44, 415412, '2024-08', '2024-08-17', '2024-10-16 03:41:48'),
(45, 424780, '2024-08', '2024-08-10', '2024-10-16 03:41:48'),
(46, 434148, '2024-08', '2024-08-21', '2024-10-16 03:41:48'),
(47, 443516, '2024-08', '2024-08-25', '2024-10-16 03:41:48'),
(48, 452884, '2024-08', '2024-08-31', '2024-10-16 03:41:48'),
(49, 462252, '2024-09', '2024-09-01', '2024-10-16 03:41:48'),
(50, 471620, '2024-09', '2024-09-11', '2024-10-16 03:41:48'),
(51, 480988, '2024-09', '2024-09-15', '2024-10-16 03:41:48'),
(52, 490356, '2024-10', '2024-10-17', '2024-10-16 03:41:48'),
(53, 499724, '2024-10', '2024-10-10', '2024-10-16 03:41:48'),
(54, 509092, '2024-10', '2024-10-21', '2024-10-16 03:41:48'),
(55, 518460, '2026-10', '2024-10-25', '2026-06-26 06:12:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores`
--

CREATE TABLE `stores` (
  `id_store` int(11) NOT NULL,
  `title_store` text DEFAULT NULL,
  `price_store` double DEFAULT 0,
  `description_store` text DEFAULT NULL,
  `category_store` text DEFAULT NULL,
  `image_store` text DEFAULT NULL,
  `rate_store` double DEFAULT 0,
  `count_store` int(11) DEFAULT 0,
  `date_created_store` date DEFAULT NULL,
  `date_updated_store` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stores`
--

INSERT INTO `stores` (`id_store`, `title_store`, `price_store`, `description_store`, `category_store`, `image_store`, `rate_store`, `count_store`, `date_created_store`, `date_updated_store`) VALUES
(1, 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops', 109.95, 'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday', 'men\'s clothing', 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png', 3.9, 120, '2025-07-31', '2026-06-21 21:47:42'),
(2, 'Mens Casual Premium Slim Fit T-Shirts', 22.3, 'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.', 'men\'s clothing', 'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_t.png', 4.1, 259, '2025-07-31', '2026-06-21 21:47:43'),
(3, 'Mens Cotton Jacket', 55.99, 'great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.', 'men\'s clothing', 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_t.png', 4.7, 500, '2025-07-31', '2026-06-21 21:47:43'),
(4, 'Mens Casual Slim Fit', 15.99, 'The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.', 'men\'s clothing', 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_t.png', 2.1, 430, '2025-07-31', '2026-06-21 21:47:43'),
(5, 'John Hardy Women\'s Legends Naga Gold & Silver Dragon Station Chain Bracelet', 695, 'From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean\'s pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.', 'jewelery', 'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_t.png', 4.6, 400, '2025-07-31', '2026-06-21 21:47:43'),
(6, 'Solid Gold Petite Micropave', 168, 'Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.', 'jewelery', 'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_t.png', 3.9, 70, '2025-07-31', '2026-06-21 21:47:43'),
(7, 'White Gold Plated Princess', 9.99, 'Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine\'s Day...', 'jewelery', 'https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_t.png', 3, 400, '2025-07-31', '2026-06-21 21:47:43'),
(8, 'Pierced Owl Rose Gold Plated Stainless Steel Double', 10.99, 'Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel', 'jewelery', 'https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_t.png', 1.9, 100, '2025-07-31', '2026-06-21 21:47:43'),
(9, 'WD 2TB Elements Portable External Hard Drive - USB 3.0', 64, 'USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on userâs hardware configuration and operating system', 'electronics', 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_t.png', 3.3, 203, '2025-07-31', '2026-06-21 21:47:43'),
(10, 'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s', 109, 'Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5â hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)', 'electronics', 'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_t.png', 2.9, 470, '2025-07-31', '2026-06-21 21:47:43'),
(11, 'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5', 109, '3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks. Supports TRIM command, Garbage Collection technology, RAID, and ECC (Error Checking & Correction) to provide the optimized performance and enhanced reliability.', 'electronics', 'https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_t.png', 4.8, 319, '2025-07-31', '2026-06-21 21:47:43'),
(12, 'WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive', 114, 'Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer\'s limited warranty', 'electronics', 'https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_t.png', 4.8, 400, '2025-07-31', '2026-06-21 21:47:43'),
(13, 'Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin', 599, '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz', 'electronics', 'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_t.png', 2.9, 250, '2025-07-31', '2026-06-21 21:47:43'),
(14, 'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) â Super Ultrawide Screen QLED', 999.99, '49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag', 'electronics', 'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_t.png', 2.2, 140, '2025-07-31', '2026-06-21 21:47:43'),
(15, 'BIYLACLESEN Women\'s 3-in-1 Snowboard Jacket Winter Coats', 56.99, 'Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates', 'women\'s clothing', 'https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_t.png', 2.6, 235, '2025-07-31', '2026-06-21 21:47:43'),
(16, 'Lock and Love Women\'s Removable Hooded Faux Leather Moto Biker Jacket', 29.95, '100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON', 'women\'s clothing', 'https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_t.png', 2.9, 340, '2025-07-31', '2026-06-21 21:47:43'),
(17, 'Rain Jacket Women Windbreaker Striped Climbing Raincoats', 39.99, 'Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but doesn\'t overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look.', 'women\'s clothing', 'https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2t.png', 3.8, 679, '2025-07-31', '2026-06-21 21:47:43'),
(18, 'MBJ Women\'s Solid Short Sleeve Boat Neck V', 9.85, '95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem', 'women\'s clothing', 'https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_t.png', 4.7, 130, '2025-07-31', '2026-06-21 21:47:43'),
(19, 'Opna Women\'s Short Sleeve Moisture', 7.95, '100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort', 'women\'s clothing', 'https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_t.png', 4.5, 146, '2025-07-31', '2026-06-21 21:47:44'),
(20, 'DANVOUY Womens T Shirt Casual Cotton Short', 12.99, '95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.', 'women\'s clothing', 'https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_t.png', 3.6, 145, '2025-07-31', '2026-06-21 21:47:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `columns`
--
ALTER TABLE `columns`
  ADD PRIMARY KEY (`id_column`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`);

--
-- Indices de la tabla `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id_module`),
  ADD KEY `id_page_module` (`id_page_module`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id_page`);

--
-- Indices de la tabla `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id_photo`);

--
-- Indices de la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sale`);

--
-- Indices de la tabla `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id_store`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `columns`
--
ALTER TABLE `columns`
  MODIFY `id_column` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `photos`
--
ALTER TABLE `photos`
  MODIFY `id_photo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id_sale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `stores`
--
ALTER TABLE `stores`
  MODIFY `id_store` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`id_page_module`) REFERENCES `pages` (`id_page`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
