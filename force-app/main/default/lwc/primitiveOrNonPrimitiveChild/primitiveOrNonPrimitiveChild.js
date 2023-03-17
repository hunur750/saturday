import { api, LightningElement } from 'lwc';

export default class PrimitiveOrNonPrimitiveChild extends LightningElement {
    @api country;
    @api cities;
}