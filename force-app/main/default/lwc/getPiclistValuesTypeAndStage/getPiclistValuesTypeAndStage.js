import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import OPP_OBJECT from '@salesforce/schema/Opportunity';

export default class GetPiclistValuesTypeAndStage extends LightningElement {
    defaultRtId;
    stageOptions=[];
    typeOptions=[];
    selectedStage;
    selectedType;
    oppName;

    @wire(getObjectInfo,{objectApiName: OPP_OBJECT})
        oppObjectInfo({data, error}){
            if(data){
                console.log('Data',data);
                this.defaultRtId=data.defaultRecordTypeId;
            }
            if(error){
                console.error(error);
            }
        }
    
    
    @wire(getPicklistValuesByRecordType, {objectApiName:OPP_OBJECT, recordTypeId: '$defaultRtId'})
        piclistHandler({data, error}){
            if(data){
                console.log('Data from picklistFieldValues',data);
                this.stageOptions=data.picklistFieldValues.StageName.values;
                this.typeOptions=data.picklistFieldValues.Type.values;
            }
            if(error){
                console.error(error);
            }
        }
        changeHandler(event){
            if(event.target.label==='Opportunity Name'){
                this.oppName=event.target.value;
            }
            if(event.target.label==='Stage Name'){
                this.selectedStage=event.target.value;
            }
            if(event.target.label==='Type'){
                this.selectedType=event.target.value;
            }



    }

    get checkValues(){
        return this.oppName && this.selectedStage && this.selectedType
    }
}