import { LightningElement } from 'lwc';

export default class CalculatorLightningInput extends LightningElement {
    num1=0;
    num2=0;
    total;

    changeHandler(event){
        if(event.target.name==="first"){
            this.num1=event.target.value
        } else if(event.target.name==="second"){
            this.num2=event.target.value
        } 
        this.total=Number(this.num1)+Number(this.num2);
        console.log(this.num1);
        console.log(this.num2);
        console.log(this.total);
    }
    
}