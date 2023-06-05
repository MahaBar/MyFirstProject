import { LightningElement } from "lwc";
import OPP_OBJECT from "@salesforce/schema/Opportunity";
import NAME_FIELD from "@salesforce/schema/Opportunity.Name";
import STAGE_FIELD from "@salesforce/schema/Opportunity.StageName";
import CLOSE_DATE_FIELD from "@salesforce/schema/Opportunity.CloseDate";
import AMOUNT_FIELD from "@salesforce/schema/Opportunity.Amount";

export default class Practice24_readonly extends LightningElement {

    objectApiName = OPP_OBJECT; 
    recordId = '006Dn00000ALJaEIAX';

    fields = [NAME_FIELD, STAGE_FIELD, CLOSE_DATE_FIELD, AMOUNT_FIELD];


}