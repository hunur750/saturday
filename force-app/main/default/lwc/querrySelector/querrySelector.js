import { LightningElement } from 'lwc';

export default class QuerrySelector extends LightningElement {

    clickHandler(){
        const secim= this.template.querySelector('h1');
        console.log(secim.innerText);
        secim.style.border='3px solid black'

        const cokluSecim=this.template.querySelectorAll('h1');
        cokluSecim.forEach(secimler => {
            secimler.style.backgroundColor='violet';
        });

        const cokluClassSecim=this.template.querySelectorAll('h1');
        cokluSecim.forEach(secimler => {
            secimler.setAttribute("class", " slds-align_absolute-center");
        });
    }


}