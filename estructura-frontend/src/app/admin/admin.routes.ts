import { Routes } from '@angular/router';
import { AdminLayoutComponent } from './admin-layout/admin-layout.component';
import { AdminDashboardComponent } from './admin-dashboard/admin-dashboard.component';
import { AdminCalendarComponent } from './admin-calendar/admin-calendar.component';

//export const ADMIN_ROUTES: Routes = [];

export const ADMIN_ROUTES: Routes = [
    {
        path: '', component: AdminLayoutComponent, children: [
            { path: '', component: AdminDashboardComponent },
            { path: 'calendar', component: AdminCalendarComponent }
        ]
    }
];
