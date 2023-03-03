
import { api, LightningElement } from 'lwc';
import FAX from '@salesforce/schema/Account.Fax';
import INDUSTRY from '@salesforce/schema/Account.Industry';
import NAME from '@salesforce/schema/Account.Name';
import OWNERSHIP from '@salesforce/schema/Account.Ownership';
import RATING from '@salesforce/schema/Account.Rating';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RecordEditFormAccNur extends LightningElement {
    @api objectApiName;
    @api recordId;
    isIndustry=false;
    isFax=false;
    isOwnership=false;
    fields={
        name:NAME,
        rating:RATING,
        industry:INDUSTRY,
        ownership:OWNERSHIP,
        fax:FAX
    }
    successHandler(){
        const evt = new ShowToastEvent({
            title: 'Account status',
            message: 'Başarili birşekilde update edildi' +this.recordId,
            variant: 'success',
        });
        this.dispatchEvent(evt);
    }
    
    
    changeHandler(event){
        if(event.target.value === 'Hot'){
            this.isIndustry=true;
            this.isFax=false;
            this.isOwnership=false;
        }else if(event.target.value === 'Cold'){
            this.isIndustry=false;
            this.isFax=true;
            this.isOwnership=false;
        }else if(event.target.value === 'Warm'){
            this.isIndustry=false;
            this.isFax=false;
            this.isOwnership=true;
        }else if(event.target.value === ''){
            this.isIndustry=false;
            this.isFax=false;
            this.isOwnership=false;
        }
    }

}