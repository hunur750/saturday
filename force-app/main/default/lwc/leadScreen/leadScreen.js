import searchName from '@salesforce/apex/LeadController12.searchName';
import INDUSTRY_FIELD from '@salesforce/schema/Lead.Industry';
import LEAD_OBJECT from '@salesforce/schema/Lead';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import searchIndustry from '@salesforce/apex/LeadController12.searchIndustry';

export default class LeadScreen extends LightningElement {

    isName = false;
    isIndustry = false;
    leads;
    error;
    industryOptions = [];
    @wire(getObjectInfo, {objectApiName: LEAD_OBJECT})
    leadInfo;

    @wire(getPicklistValues, {fieldApiName:INDUSTRY_FIELD, recordTypeId: '$leadInfo.data.defaultRecordTypeId'})
    piclistHandler({data, error}){
        if (data) {
            this.industryOptions = data.values;
        } else {
            console.error(error);
        }
    
    }

    handleClick(event){
        if (event.target.label === "Search by Name") {
            this.isName = !this.isName;
            this.leads = undefined;
            this.isIndustry = false;
        }
        if (event.target.label === "Search by Industry") {
            this.isIndustry = !this.isIndustry;
            this.leads = undefined;
            this.isName = false;
        }
       
    }

    changeHandler(event){
        const selectedName = event.target.value;
        const selectedIndustry = event.target.value;
        if (event.target.label === "Enter Search Word") {
            searchName({word:selectedName})
                .then(result => {
                    if (result.length>0 && selectedName.length>1) {
                        this.leads = result;
                        this.error = undefined;
                        console.log('leads => ', this.leads);
                    } else {
                        this.error = "isleminiz gerceklesmedi..";
                        this.leads = undefined;
                    }
                })
                .catch(error => {
                    this.error = error.body.message;
                })
        } else {
            searchIndustry({industry: selectedIndustry})
                .then(result => {
                    if(result.length > 0){
                        this.leads = result;
                    } else {
                        this.leads = undefined;
                        this.error = "Listenizde aradiginiz industry de bir record bulunamadi..";
                    }
                })
                .catch(error => {
                    this.error = error.body.message;
                })
        }
    }
}