import { LightningElement } from 'lwc';

export default class ModalParent extends LightningElement {
    showModal=false;
    message;

    createEmployee(){
        this.showModal=true;
    }

    closeHandler(event){
        console.log(JSON.stringify(event.detail));
        this.showModal=false;
        this.message=event.detail;
    }


}