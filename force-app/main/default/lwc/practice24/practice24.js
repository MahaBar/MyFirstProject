import { LightningElement } from "lwc";
import OPP_OBJECT from "@salesforce/schema/Opportunity";
import NAME_FIELD from "@salesforce/schema/Opportunity.Name";
import STAGE_FIELD from "@salesforce/schema/Opportunity.StageName";
import CLOSE_DATE_FIELD from "@salesforce/schema/Opportunity.CloseDate";
import AMOUNT_FIELD from "@salesforce/schema/Opportunity.Amount";

import { ShowToastEvent } from 'lightning/platformShowToastEvent';



export default class Practice24 extends LightningElement {

    objectApiName = OPP_OBJECT; 

    fields = [NAME_FIELD, STAGE_FIELD, CLOSE_DATE_FIELD, AMOUNT_FIELD]; 


    showSuccess(event) {
        
        this.dispatchEvent(
            new ShowToastEvent(
                    {
                        title: 'Opp created successfully',
                        message: 'Successfully created and record Id is ' + event.detail.id ,
                        variant: 'success'
                    }
            )
        );

    }


}