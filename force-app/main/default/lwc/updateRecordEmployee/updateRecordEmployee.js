import { getRecord, updateRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import EMAIL_FIELD from '@salesforce/schema/Employee__c.Email__c';
import PHONE_FIELD from '@salesforce/schema/Employee__c.Phone_Number__c';
import DES__FIELD from '@salesforce/schema/Employee__c.Designation__c';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

const FIELDS= [EMAIL_FIELD, PHONE_FIELD, DES__FIELD];

export default class UpdateRecordEmployee extends LightningElement {
    recordId='a05B000000FQ59VIAT';
    formdata={};

    changeHandler(event){
        const {name, value}=event.target;
        this.formdata[name]=value;

    }

    @wire(getRecord,{recordId:'$recordId', fields: FIELDS})
    employee;

    updateEmployee(){
        this.formdata["Id"]=this.recordId;
        const recordInput={
            fields:this.formdata
        };
        updateRecord(recordInput)
        .then(result=> {
            const successToast=new ShowToastEvent({
                title:"Success",
                message:"Employee record has been updated successfully!",
                variant:"success"
            });
            this.dispatchEvent(successToast);
        })

        .catch(error=>{
            console.error(error);
        })
    }
    

    }
