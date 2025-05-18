@echo off
REM === Crear carpetas si no existen ===
if not exist src\app\admin (
    mkdir src\app\admin
)

if not exist src\app\auth (
    mkdir src\app\auth
)

if not exist src\app\articles (
    mkdir src\app\articles
)

if not exist src\app\core (
    mkdir src\app\core
)

if not exist src\app\shared (
    mkdir src\app\shared
)

REM === Crear admin.routes.ts ===
echo import { Routes } from '@angular/router';> src\app\admin\admin.routes.ts
echo.>> src\app\admin\admin.routes.ts
echo export const ADMIN_ROUTES: Routes = [];>> src\app\admin\admin.routes.ts

REM === Crear auth.routes.ts ===
echo import { Routes } from '@angular/router';> src\app\auth\auth.routes.ts
echo.>> src\app\auth\auth.routes.ts
echo export const AUTH_ROUTES: Routes = [];>> src\app\auth\auth.routes.ts

REM === Crear articles.routes.ts ===
echo import { Routes } from '@angular/router';> src\app\articles\articles.routes.ts
echo.>> src\app\articles\articles.routes.ts
echo export const ARTICLE_ROUTES: Routes = [];>> src\app\articles\articles.routes.ts


REM Componentes ADMIN
call ng g c admin/admin-layout --skip-tests
call ng g c admin/admin-calendar --skip-tests
call ng g c admin/admin-dashboard --skip-tests

REM Componentes ARTICLE
call ng g c articles/article-detail --skip-tests
call ng g c articles/article-list --skip-tests

REM Componentes AUTH
call ng g c auth/admin-login --skip-tests
call ng g c auth/admin-register --skip-tests


echo.
echo Archivos de rutas creados exitosamente:
echo - src\app\admin\admin.routes.ts
echo - src\app\auth\auth.routes.ts
echo - src\app\articles\articles.routes.ts
echo Componetes ADMIN,ARTICLE,AUTH creados exitosamente:...
echo - 
echo Archivos src\app\core y src\app\shared creados exitosamente:
