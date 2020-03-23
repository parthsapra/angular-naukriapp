import { Component, OnInit } from "@angular/core";
import { FormBuilder, FormGroup, Validators, FormArray } from "@angular/forms";
import { Router } from "@angular/router";
import {UserData} from "../../userData.model";
import {FresherEducationalData} from "../../fresherEducationalData.model";
@Component({
  selector: "app-fresher",
  templateUrl: "./fresher.component.html",
  styleUrls: ["./fresher.component.css"]
})
export class FresherComponent implements OnInit {
  personal: boolean;
  education: boolean;
  users=UserData;
  fresherEducationalData:FresherEducationalData;
  constructor(private formBuilder: FormBuilder, private router: Router) {}
  fresherRegistrationFormGroup: FormGroup;
  fresherEducationFormGroup: FormGroup;
  ngOnInit() {
    this.personal = true;
    this.fresherRegistrationFormGroup = this.formBuilder.group({
      userName: ["", Validators.required],
      emailId: ["", Validators.compose([Validators.email,Validators.required])],
      password: ["", Validators.compose([Validators.minLength(6),Validators.required])],
      mobileNumber: ["", Validators.compose([Validators.pattern("^((\\+91-?)|0)?[0-9]{10}$"),Validators.required])],
      city: ["", Validators.required],
      resume: ["", Validators.required]
    });
    this.fresherEducationFormGroup = this.formBuilder.group({
      qualification: ["", Validators.required],
      course: ["", Validators.required],
      specialization: ["", Validators.required],
      institute: ["", Validators.required],
      courceType: ["", Validators.required],
      passingYear: ["", Validators.required],
      skills: this.formBuilder.array([])
    });
    console.log(this.fresherEducationalData);
  }
  addSkill(){
    const skl=this.fresherEducationFormGroup.controls.skills as FormArray;
    skl.push(this.formBuilder.group({
      skillName:""
    }));
  }
  registerUser() {
    console.log(this.fresherRegistrationFormGroup.controls);
    this.users.push(this.fresherRegistrationFormGroup.value);
    this.personal = false;
    this.education = true;
  }
  addEducationDetail(){
    console.log(this.fresherEducationFormGroup.controls);
  }
}
