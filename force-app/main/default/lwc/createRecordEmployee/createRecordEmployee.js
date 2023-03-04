import { LightningElement } from 'lwc';

export default class CreateRecordEmployee extends LightningElement {
    formdata={};

    changeHandler(event){
        const {name, value} = event.target;
        this.date[name] = value;
    }




}