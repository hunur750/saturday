import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name; //undefined
    age=30;
    fullname='Salesforce Developer';
    location={
        city:'Houston',
        country:'United States',
        postalcode:'456987',
    };
    fruits=['Mangarine', 'Apple', 'Kiwi'];
}