import { Component, OnInit } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import { Router } from "@angular/router";
import { UserData } from "../../userData.model";

@Component({
  selector: "app-login",
  templateUrl: "./login.component.html",
  styleUrls: ["./login.component.css"]
})
export class LoginComponent implements OnInit {
  constructor(private formBuilder: FormBuilder, private router: Router) {}
  loginFormGroup: FormGroup;
  users = UserData;
  ngOnInit() {
    this.loginFormGroup = this.formBuilder.group({
      emailid: ["", Validators.required],
      password: ["", Validators.required]
    });
    console.log(this.users);
  }

  login() {
    console.log(this.loginFormGroup.controls.emailid.value);
    console.log(this.loginFormGroup.controls.password.value);
    var check: Boolean = false;
    for (var i = 0; i < this.users.length; i++) {
      if (this.loginFormGroup.controls.emailid.value == this.users[i].emailid && this.loginFormGroup.controls.password.value == this.users[i].password) {
        console.log("passpass");
        check = true;
        break;
      }
    }
  }
}
