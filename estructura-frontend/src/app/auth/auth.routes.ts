import { Routes } from '@angular/router';
import { AdminRegisterComponent } from './admin-register/admin-register.component';
import { AdminLoginComponent } from './admin-login/admin-login.component';

//export const AUTH_ROUTES: Routes = [];

export const AUTH_ROUTES: Routes = [
    { path: 'register', component: AdminRegisterComponent },
    { path: 'login', component: AdminLoginComponent }
];
