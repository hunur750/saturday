import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import CASE_OBJECT from '@salesforce/schema/Case';

export default class GetInfoObjectCase extends LightningElement {
    caseCusRtId;
    caseEnRtId;

    @wire(getObjectInfo, {objectApiName:CASE_OBJECT})
    objectInfoHandler({data, error}){
        if(data){
            console.log(data);
            this.caseCusRtId=data.defaultRecordTypeId;
            const rtids=data.recordTypeInfos;
            this.caseEnRtId= Object.keys(rtids).find(rtid => rtids[rtid].name==="Enquiry");

            
        }
        if(error){
            console.log(error);
        }
    }
}