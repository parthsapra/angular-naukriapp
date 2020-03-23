import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { HelloComponent } from './hello.component';
import { LoginComponent } from './login/login.component';
import { RegistrationComponent } from './registration/registration.component';
import {APP_LAZY_ROUTING} from './routing.ts';
import { RouterModule } from '@angular/router';
import { FresherComponent } from './registration/fresher/fresher.component';
import { ProfessionalComponent } from './registration/professional/professional.component';

@NgModule({
  imports:      [ BrowserModule, FormsModule,APP_LAZY_ROUTING,RouterModule,ReactiveFormsModule ],
  declarations: [ AppComponent, HelloComponent, LoginComponent, RegistrationComponent, FresherComponent, ProfessionalComponent ],
  exports:[RouterModule],
  bootstrap:    [ AppComponent ]
})
export class AppModule { }
