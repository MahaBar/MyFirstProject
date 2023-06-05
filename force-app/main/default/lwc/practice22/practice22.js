import { LightningElement } from "lwc";
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import PHONE_FIELD from "@salesforce/schema/Account.Phone";
// start typing this to get help  : impLWCToast
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class Practice22 extends LightningElement {

    objectApiName = ACCOUNT_OBJECT; 
    fields = [NAME_FIELD , REVENUE_FIELD,INDUSTRY_FIELD, PHONE_FIELD];

    handleSuccess(event) {
        
        // we can access the detail of newly created record using event.details
        console.log(event.detail);
        // accessing newly created record Id
        console.log(event.detail.id);
        // accessing the newly created record fields in this syntax
        console.log(event.detail.fields.AnnualRevenue.value);
        
        const showToastEvent = new ShowToastEvent({
            title: 'Successfully Created',
            message: 'You have created account successfully ' + event.detail.id,
            variant: 'success'
        }); 

        this.dispatchEvent(showToastEvent);
        // or do it in one shot using shortcut lwc-toast and replace the title, message
        // this.dispatchEvent(new ShowToastEvent({
        //     title: 'Successfully Created',
        //     message: 'You have created account successfully ' + event.detail.id,
        //     variant: 'success'
        // }));

    }               


}
