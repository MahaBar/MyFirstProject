import { LightningElement, wire } from "lwc";
import getAccountsIfRevenueLessThan from "@salesforce/apex/AccountController.getAccountsIfRevenueLessThan";



export default class Practice18 extends LightningElement {

    sliderValue = 5000000; 

    columns = [
        { label: 'Account Name', fieldName: 'Name' },
        { label: 'Annual Revenue', fieldName: 'AnnualRevenue' },
      ];

    // {
    //     data : "wired data goes here",
    //     error : " error goes here if any",
    //  }
    // in order to make the apex method parameter value dynamic
    // using the property we need to use the '$propertyName' syntax
    // @wire(getAccountsIfRevenueLessThan ,{maxRevenue:1000000 })
    @wire(getAccountsIfRevenueLessThan ,{maxRevenue:'$sliderValue' })
    myAccounts; 
    // get the raw json string to see what we got wired to
    get myAccountsInStr() {
        return JSON.stringify(this.myAccounts,null,2); 
    }
    

    handleSliderChange(event) {
        this.sliderValue = event.target.value ; 
    }
    
}