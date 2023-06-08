import { LightningElement, api, wire } from "lwc";
import CASE_NUMBER_FIELD from "@salesforce/schema/Case.CaseNumber";
import STATUS_FIELD from "@salesforce/schema/Case.Status";
import { getFieldValue, getRecord } from "lightning/uiRecordApi";

export default class Practice27 extends LightningElement {
    // we will get recordId from record page directly 
    @api recordId;
    // based on recordId get the the entire case object and whatever fields you need 
    @wire(getRecord, {
        recordId: '$recordId',
        fields: [CASE_NUMBER_FIELD, STATUS_FIELD]
    })
    caseRecord; 

    get caseNumber() {
        return getFieldValue(this.caseRecord.data, CASE_NUMBER_FIELD);
    }

    get caseStatus() {
        return getFieldValue(this.caseRecord.data, STATUS_FIELD);
    }
    

}