import { LightningElement } from 'lwc';

export default class JobCard extends LightningElement {
    firstName;
    lastName;
    role;
    handleChange(event){
        if (event.target.label==="First Name"){
            this.firstName=event.target.value;
        } else if (event.target.label==="Last Name") {
            this.lastName=event.target.value;

        } else{
            this.role=event.target.value;
        }
       // this.firstName=event.target.value;

    }
    //handleChange2(event){
      //  this.lastName=event.target.value;

    //}
    options = [
        { label: 'SalesForce admin', value:'Salesforce Admin'},
        { label: 'SalesForce developer1', value:'Salesforce developer 1'},
        { label: 'SalesForce admin2', value:'Salesforce Admin2'}

     
    ]
    //handleChange3(){
        //this.role=Event.target.value

    //}

}