import { LightningElement } from 'lwc';
import{ showToastEvent } from 'lightning/platformShowToastEvent';

import CASE_OBJECT from '@salesforce/schema/Case';
import ACCOUNT from '@salesforce/schema/Case.AccountId';
import CONTACT from '@salesforce/schema/Case.ContactId';
import SUBJECT from '@salesforce/schema/Case.Subject';
import DESCRIPTION from '@salesforce/schema/Case.Description';
import PRIORITY from '@salesforce/schema/Case.Priority';
import ORIGIN from '@salesforce/schema/Case.Origin';

export default class LightningRecordViewFormCase extends LightningElement {

    recordId="500B000000AZIHZIA5";
    objectName=CASE_OBJECT;
    fields=[ACCOUNT, CONTACT, SUBJECT, DESCRIPTION, PRIORITY, ORIGIN];

    successHandler(){
        const successToast= new showToastEvent({
            title : "Success",
            message : " Case has saved successfully",
            variant : "success"
        });
        this.dispatchEvent(successToast);
    }
}