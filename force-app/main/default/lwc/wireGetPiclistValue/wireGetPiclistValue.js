import { getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';



export default class WireGetPiclistValue extends LightningElement {
    error;
    AccountSourceOptions=[];
    AccountSource;

    @wire(getPicklistValuesByRecordType, {objectApiName: ACCOUNT_OBJECT, recordTypeId:'012B0000000qLm1IAE'})
    
    objectInfoHandler({error,data}){
        if(error){ 
            this.error=error;

        } else if(data){
            console.log(data);
            this.AccountSourceOptions=this.builtTreeModel(data.picklistFieldValues.AccountSource);

        }
        
    }
        
        builtTreeModel(info){
            return info.values.map(item => ({
                label:item.label,
                value:item.value
            }));
        }
        changeHandler(event){
            this.AccountSource=event.target.value
        }
    
}