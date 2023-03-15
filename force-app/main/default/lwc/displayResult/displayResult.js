import { api, LightningElement } from 'lwc';

export default class DisplayResult extends LightningElement {
    @api records;
    @api columns;
    @api error;
    
}