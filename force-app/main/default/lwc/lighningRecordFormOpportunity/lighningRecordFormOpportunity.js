import { LightningElement } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Name';
import STAGE_FIELD from '@salesforce/schema/OpportunityStage.Description';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';


export default class LighningRecordFormOpportunity extends LightningElement {
    objectName=OPPORTUNITY_OBJECT;
    fields=[NAME_FIELD, AMOUNT_FIELD, STAGE_FIELD, TYPE_FIELD];
}