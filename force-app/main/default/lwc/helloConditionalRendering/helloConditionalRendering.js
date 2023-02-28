import { LightningElement, track } from 'lwc';

export default class HelloConditionalRendering extends LightningElement {
    areDetailsVisible = false;
    firstName = "Burak";
    @track location = {
        city : "Ankara",
        country : "Turkey",
        region : "Europe"
    }

    handleChange(event) {
        if (event.target.label === "Show Details") {
            this.areDetailsVisible = event.target.checked;
        } else if (event.target.label === "first name") {
            this.firstName = event.target.value;
        } else {
            this.location.city = event.target.value;
        }
        
    }
}