import { api, LightningElement } from 'lwc';
import CASE_OBJECT from '@salesforce/schema/Case';
import CASENUMBER_FIELD from '@salesforce/schema/Case.CaseNumber';
import ACCOUNT_FIELD from '@salesforce/schema/Case.AccountId';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import STATUS_FIELD from '@salesforce/schema/Case.Priority';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';



export default class CaseViewForm extends LightningElement {
    //recordId='500B000000AZIHbIAP';
    @api recordId;
    objectName= CASE_OBJECT;
    fields={
        caseNumber:CASENUMBER_FIELD,
        account:ACCOUNT_FIELD,
        origin:ORIGIN_FIELD,
        priority:PRIORITY_FIELD,
        status:STATUS_FIELD,
        subject:SUBJECT_FIELD


    };
}