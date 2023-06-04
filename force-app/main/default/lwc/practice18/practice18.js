import { LightningElement, wire } from "lwc";
import getAccountsIfRevenueLessThan from "@salesforce/apex/AccountController.getAccountsIfRevenueLessThan";



export default class Practice18 extends LightningElement {

    // sliderValue = 100000; 

    columns = [
        { label: 'Account Name', fieldName: 'Name' },
        { label: 'Annual Revenue', fieldName: 'AnnualRevenue' },
      ];

    // {
    //     data : "wired data goes here", 
    //     error : " error goes here if any",
    //  }
    @wire(getAccountsIfRevenueLessThan, {maxRevenue: 10000000 }    )
    myAccounts; 


    
    
}