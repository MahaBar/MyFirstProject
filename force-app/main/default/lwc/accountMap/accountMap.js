import { getFieldValue, getRecord } from "lightning/uiRecordApi";
import { LightningElement, api, wire } from "lwc";
import BillingStreet from "@salesforce/schema/Account.BillingStreet";
import BillingCity from "@salesforce/schema/Account.BillingCity";
import BillingState from "@salesforce/schema/Account.BillingState";
import BillingCountry from "@salesforce/schema/Account.BillingCountry";
import BillingPostalCode from "@salesforce/schema/Account.BillingPostalCode";
import Name from "@salesforce/schema/Account.Name";  
import Description from "@salesforce/schema/Account.Description";

export default class AccountMap extends LightningElement {
    
    mapMarkers = []; 

    @api
    recordId;


    // call getRecord method from LDS to get the whole record and fields needed
    
    @wire(getRecord, {
        recordId: '$recordId',
        fields: [Name, Description, BillingStreet,BillingCity, BillingState,BillingCountry,BillingPostalCode]
    })
    wiredAccount ({error, data}) {
        if (data) {
            // console.log(data); 
            // TODO: Data handling
            this.mapMarkers = [
                {
                    location: {
                        City:       getFieldValue(data, BillingCity)  ,
                        Country:    getFieldValue(data, BillingCountry)  ,
                        PostalCode: getFieldValue(data, BillingPostalCode)  ,
                        State:      getFieldValue(data, BillingState)  ,
                        Street:     getFieldValue(data, BillingStreet)  ,
                    },
                    value:  getFieldValue(data, Name)  ,
                    title:  getFieldValue(data, Name)  ,
                    description:  getFieldValue(data, Description)  ,
                    icon: 'standard:account',
                }
            ]





        } else if (error) {
            
            // TODO: Error handling
        }
    }


    
}

//https://developer.salesforce.com/docs/component-library/documentation/en/lwc/reference_wire_adapters_record