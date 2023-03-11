
import topAnnualRevenue from '@salesforce/apex/AccountCtrlYunus.topAnnualRevenue';
import { LightningElement, wire } from 'lwc';

export default class TopAnnualRevenue extends LightningElement {
  error=this.accounts.error.body.message;
  totalRev;
  @wire(topAnnualRevenue)
  accounts;
  

  clickHandler(){
    topAnnualRevenue()
        .then(result=>{
            this.totalRev=result;
        })
        .catch(error=>{
            this.error= error;
        })

    
  }

    }

