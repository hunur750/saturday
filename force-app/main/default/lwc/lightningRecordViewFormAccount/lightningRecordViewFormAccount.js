import { LightningElement } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME from '@salesforce/schema/Account.Name';
import TYPE from '@salesforce/schema/Account.Type';
import INDUSTRY from '@salesforce/schema/Account.Industry';
import REVENUE from '@salesforce/schema/Account.AnnualRevenue';
import PHONE from '@salesforce/schema/Account.Phone';


export default class LightningRecordViewFormAccount extends LightningElement {
    recordId="001B000001TAmJNIA1";
    objectName= ACCOUNT_OBJECT;

    fields={
        name:NAME,
        type:TYPE,
        industry:INDUSTRY,
        revenue:REVENUE,
        phone:PHONE
    };
}