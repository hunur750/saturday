import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';


export default class GetRecordAccountChild extends LightningElement {

    
    objectName;
    objData;
    objerror;

    @wire(getObjectInfo,{objectApiName: '$objectName'})

    objectInfoHandler({data, error}){
        if(data){
            console.log('getobjectinfor',data);
            this.objData=data;
        }
        if(error){
            this.objerror=error;
            console.error(error);
        }
    }
    handleClick(){
        this.objectName=this.template.querySelector('lightning-input').value;
        console.log(this.objectName);

    }
 
       get body(){
       
       return this.objectName?JSON.stringify(this.objData , null, 3):'';
       }

}