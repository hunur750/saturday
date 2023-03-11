import USER_COMPANY_NAME from '@salesforce/schema/User.CompanyName';
import USER_DEPARTMENT from '@salesforce/schema/User.Department';
import USER_ID from '@salesforce/schema/User.Id';
import CURRENTUSERID from '@salesforce/user/Id';
import { updateRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { NavigationMixin } from 'lightning/navigation';

export default class UserUpdate extends NavigationMixin(LightningElement) {

    companyName;
    department;
    userId = CURRENTUSERID;//4076354
    /*fields = {}
    fields[Id] = this.userId;
​
    changeHandler(event){
        fields[event.target.name] = event.target.value;
    }*/
    
    changeHandler(event){
        if (event.target.label === "Company Name") {
            this.companyName = event.target.value;
        }
        if (event.target.label === "Department") {
            this.department = event.target.value;
        }
    }

    updateUser(){
        const fields = {};
        fields[USER_ID.fieldApiName] = this.userId;
        fields[USER_COMPANY_NAME.fieldApiName] = this.companyName;
        fields[USER_DEPARTMENT.fieldApiName] = this.department;

        const userRecordInput = {fields};
        updateRecord(userRecordInput)
            .then(() => {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Success',
                    message: 'User: ' + this.userId + ' has been updated.',
                    variant: 'success'
                }));
                this[NavigationMixin.Navigate]({
                    type: 'standard__recordPage',
                    attributes: {
                        recordId: this.userId,
                        objectApiName: 'User',
                        actionName: 'view'
                    }
                })
            })
            .catch(error => {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Error',
                    message: error.body.message,
                    variant: 'error'
                }));
            })
    }
}