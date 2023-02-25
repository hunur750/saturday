import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import EMP_OBJECT from '@salesforce/schema/Employee__c';

import NAME_FIELD from '@salesforce/schema/Employee__c.Name';
import DESIGNATION_FIELD from '@salesforce/schema/Employee__c.Designation__c';
import EMAIL_FIELD from '@salesforce/schema/Employee__c.Email__c';
import USER_FIELD from '@salesforce/schema/Employee__c.UserName__c';
import PHONE_FIELD from '@salesforce/schema/Employee__c.Phone_Number__c';
import GENDER_FIELD from '@salesforce/schema/Employee__c.Gendeer__c';

export default class LightningRecordEditFormEmployee extends LightningElement {
    recordId="a05B000000FQ59VIAT";
    objectName=EMP_OBJECT;
    fields={
        name:NAME_FIELD,
        designation:DESIGNATION_FIELD,
        email:EMAIL_FIELD,
        username:USER_FIELD,
        phone:PHONE_FIELD,
        gender:GENDER_FIELD,
    };
    successHandler() {
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "Employee record has been saved successfully!",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }

}