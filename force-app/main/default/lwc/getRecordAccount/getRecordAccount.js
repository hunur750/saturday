import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import NAME from '@salesforce/schema/Account.Name';
import REVENUE from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY from '@salesforce/schema/Account.Industry';

const FIELDS=[NAME, REVENUE, INDUSTRY];
export default class GetRecordAccount extends LightningElement {
    recordId='001B000001TAmJTIA1';
    name;
    revenue;
    industry;
    @wire(getRecord,{recordId:'$recordId' , fields : FIELDS})

    recordHandler({data, error}){
        if(data){
           
            this.name=getFieldValue(data, NAME);
            this.revenue=getFieldDisplayValue(data, REVENUE);
            this.industry=getFieldValue(data,INDUSTRY);
        }
        if(error){ 
            console.error(error);
        }

    }
}