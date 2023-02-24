import { LightningElement } from 'lwc';
import  ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import ACCNUMBER_FIELD from '@salesforce/schema/Account.AccountNumber';
export default class FecordFormAccount extends LightningElement {
    recordId
    objectName = ACCOUNT_OBJECT;
    fields =[NAME_FIELD, TYPE_FIELD, INDUSTRY_FIELD, PHONE_FIELD, REVENUE_FIELD, ACCNUMBER_FIELD];
}