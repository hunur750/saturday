import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { createRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import LEAD from '@salesforce/schema/Lead';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class CreateRecordLead extends LightningElement {
    formData={};
    changeHandler(event){
        const name=event.target.name;
        const value=event.target.value;
        //const{name, value}=event.target
        this.formData[name]=value;
        console.log('formData',this.formData);

    }
    cancelLead(){
        this.template.querySelector('form.bizim').reset();
        this.formData={};  
    }

    saveLead(){
        const recordInput={apiName:LEAD.objectApiName, fields:this.formData}
        createRecord(recordInput)
        .then(result=>{
            this.dispatchEvent(new ShowToastEvent({
                title: 'success',
                message: 'message',
                variant: 'success'
            }));
            
            
            
        })
        

    }
}