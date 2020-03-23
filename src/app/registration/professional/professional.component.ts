import { Component, OnInit } from '@angular/core';
import {FormBuilder,FormGroup,Validators,FormArray} from '@angular/forms';
import {Router} from '@angular/router';
@Component({
  selector: 'app-professional',
  templateUrl: './professional.component.html',
  styleUrls: ['./professional.component.css']
})
export class ProfessionalComponent implements OnInit {
personal:boolean;
education:boolean;
employment:boolean;
  constructor(private formBuilder:FormBuilder,private router:Router) { }
professionalUserRegistrationFormGroup:FormGroup;
educationDetailFormGroup:FormGroup;
employmentFormGroup:FormGroup;
  ngOnInit() {
    this.personal=true;
    this.professionalUserRegistrationFormGroup=this.formBuilder.group({
      userName:["",Validators.required],
      emailId:["",Validators.required],
      password:["",Validators.required],
      mobileNumber:["",Validators.required],
      yearExperience:["",Validators.required],
      monthExperience:["",Validators.required],
      resume:["",Validators.required]
    });
this.employmentFormGroup=this.formBuilder.group({
  designation:["",Validators.required],
  companyName:["",Validators.required],
  salaryLakhs:["",Validators.required],
  salaryThousands:["",Validators.required],
  startYear:["",Validators.required],
  startMonth:["",Validators.required],
  endYear:["",Validators.required],
  endMonth:["",Validators.required],
  city:["",Validators.required],
  noticePeriod:["",Validators.required],
skills:this.formBuilder.array([]),
  industry:["",Validators.required],
  functionalArea:["",Validators.required],
  role:["",Validators.required]
});
this.educationDetailFormGroup=this.formBuilder.group({
qualification:["",Validators.required],
cource:["",Validators.required],
specialization:["",Validators.required],
institute:["",Validators.required],
courceType:["",Validators.required],
passingYear:["",Validators.required]
});
  }
  addSkill(){
    const skl=this.employmentFormGroup.controls.skills as FormArray;
    skl.push(this.formBuilder.group({
      skillName:""
    }));
  }
registerUser(){
  alert("personal information added successfully!");
  console.log(this.professionalUserRegistrationFormGroup.controls);
  this.personal=false;
  this.employment=true;
  this.education=false;
}
addEmploymentDetail(){
  alert("employmetn detail added successfully!!");
  this.personal=false;
  this.employment=false;
  this.education=true;
}
addEducationDetail(){
alert("education detail added successfully!");
}

}