import { LightningElement, track} from 'lwc';

export default class CrackProperty extends LightningElement {
        @track location ={
            city:"Houston",
            country:"United States",
            postalCode:"11223"
        }
        changeHandler(event){
            this.location.city=event.target.value;
        }
    }


