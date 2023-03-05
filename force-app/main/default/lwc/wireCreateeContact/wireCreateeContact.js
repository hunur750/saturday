import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent'; 

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import LEADSOURCE_FIELD from '@salesforce/schema/Contact.LeadSource';
import { createRecord } from 'lightning/uiRecordApi';

export default class WireCreateeContact extends LightningElement {

    leadSourceOptions=[];
    conRtId;
    formData={};
    @wire(getObjectInfo, {objectApiName: CONTACT_OBJECT})
    ContactInfo({data, error}){
        if(data){
            console.log(data);
            this.conRtId=data.defaultRecordTypeId;

        }

        if(error){
            console.error(error);
        }
    }
        @wire(getPicklistValues, {fieldApiName: LEADSOURCE_FIELD, recordTypeId: '$conRtId'})

        piclistHandler({data,error}){

            if(data){
                this.leadSourceOptions=data.values
            }
            if(error){
                console.error(error);
            }
    }   changeHandler(event){
      
            const {name, value}= event.target;
            this.formData[name]= value;
            console.log('JSON' , JSON.stringify(this.formData));
    }

        saveContact(){
            const recordInput={
                apiName:CONTACT_OBJECT.objectApiName,
                fields:this.formData

            }
            createRecord(recordInput)
                .then(result => {
                    console.log('result' ,result);
                    const successToast=new ShowToastEvent({
                        title:"Success",
                        message:"Contact recordu basarili bir sekilde kaydedildi",
                        variant:"success"
                    });
                    this.dispatchEvent(successToast);
                })
                

        }

        cancelContact
    


}