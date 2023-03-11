import searchEmployees from '@salesforce/apex/EmployeeCtrl.searchEmployees';
import { LightningElement } from 'lwc';

export default class EmployeeSearch extends LightningElement {

    employees;
    error;

 
    searchHandler(event){
        const searchWord = event.target.value;
        if(searchWord.length>0){
            searchEmployees({searchKey:searchWord})
            .then(result =>{
                if(result.length>0){
                    
                
                this.employees=result;
                this.error=undefined;
                }else{
                    this.employees= undefined;
                this.error=" There are no  matching employee records";
                }
            } )
            .catch(error => {
                this.error=error.body.message;
            })
        } else {
            this.employees= undefined;
            this.error=" Please enter a search word in order to see matching employee records";
        }
      
    }

}