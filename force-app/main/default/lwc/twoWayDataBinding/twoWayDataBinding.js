import { LightningElement } from 'lwc';

export default class Databinding extends LightningElement {
   fullname = "Huseyin";
   title = "Salesforce Developer";

   changeHandler(event){
        this.title = event.target.value;
   }
   
}