import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import { api, LightningElement, wire } from 'lwc';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import DEPARTMENT_FIELD from '@salesforce/schema/Contact.Department';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
 

const FIELDS=[FIRSTNAME_FIELD, LASTNAME_FIELD, EMAIL_FIELD, PHONE_FIELD, DEPARTMENT_FIELD, TITLE_FIELD];


export default class GetRecordContact extends LightningElement {
    //@api recordId;
    
    recordId="003B000000MjikNIAR";
    firstName;
    lastName;
    email;
    mobile;
    department;
    title;

    @wire (getRecord,{recordId:'$recordId', fields:FIELDS})
    contactInfo({data, error}){
        if(data){
            console.log('contact info', data);
            this.firstName=getFieldValue(data, FIRSTNAME_FIELD);
            this.lastName=getFieldValue(data,LASTNAME_FIELD);
            this.email=getFieldValue(data,EMAIL_FIELD);
            this.mobile=getFieldValue(data,PHONE_FIELD);
            this.department=getFieldValue(data,DEPARTMENT_FIELD);
            this.title=getFieldValue(data,TITLE_FIELD);

        }
        if(error){
            console.error(error);
        }
    }


}