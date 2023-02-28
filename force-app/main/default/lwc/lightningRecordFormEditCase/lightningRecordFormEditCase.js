import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CASE_OBJECT from '@salesforce/schema/Case';
import ACCOUNT_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACT_FIELD from '@salesforce/schema/Case.ContactId';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import STATUS from '@salesforce/schema/Case.Status';
import DESCRIPTION from '@salesforce/schema/Case.Description';
import ORIGIN from '@salesforce/schema/Case.Origin';

export default class LightningRecordFormEditCase extends LightningElement {
    objectName=CASE_OBJECT;
    recordId="500B000000AZIHiIAP";
    fields={
        accountId: ACCOUNT_FIELD,
        conId: CONTACT_FIELD,
        subject:SUBJECT_FIELD,
        priority:PRIORITY_FIELD,
        status:STATUS,
        description:DESCRIPTION,
        origin:ORIGIN
    }
    successHandler(){
        const successToast=new ShowToastEvent({
            title:'Success',
            message:'Case record has been saved successfully',
            variant:'success'


        });
        this.dispatchEvent(successToast);
    }
    

}
	