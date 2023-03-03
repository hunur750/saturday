import { api, LightningElement } from 'lwc';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import LEAD_FIELD from '@salesforce/schema/Contact.LeadSource';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';



export default class RecordViewFormContactNur extends LightningElement {
    @api objectApiName;
    @api recordId;
    fields={
        firstName:FIRSTNAME_FIELD,
        lastName:LASTNAME_FIELD,
        title:TITLE_FIELD,
        leadSource:LEAD_FIELD
    
    }

}