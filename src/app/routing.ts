import {Routes,RouterModule,PreloadAllModules,NoPreloading} from '@angular/router';
import {ModuleWithProviders} from '@angular/core';
import { LoginComponent } from './login/login.component';
import { RegistrationComponent } from './registration/registration.component';
import { FresherComponent } from './registration/fresher/fresher.component';
import { ProfessionalComponent } from './registration/professional/professional.component';
import professionalComponentCss from './registration/professional/professional.component.css';
const APP_LAZY_ROUTES:Routes=[
  {path:"",component:LoginComponent},
  {path:"registration",component:RegistrationComponent},
  {path:"fresher",component:FresherComponent},
  {path:"professional",component:ProfessionalComponent}
];
export const APP_LAZY_ROUTING:ModuleWithProviders=RouterModule.forRoot(
  APP_LAZY_ROUTES,
  {
    preloadingStrategy:NoPreloading
  }
);