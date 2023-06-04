import { LightningElement,wire } from "lwc";
import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";

export default class Practice17 extends LightningElement {

    accounts; // property
    error; // property
    

   /**
    @wire decorator is used to get salesforce data, also called wire adaptor
     below line will call the apex method getAccountWithAnnualRevenue
     get the result -> turn it into json with certain structure
     and assign it to the property(or function) right under ->
     in this case the function parameter 
     it will have this structure 
    {
        data : [the data queried] ,    
        error : undefined
    }
    */
    @wire(getAccountWithAnnualRevenue) 
    getDataFromApex( {data , error} ) {  // destructing the result we got from apex into data and error variable using destructing syntax 
        
        if (data) {
            this.accounts = data; 
            this.error = undefined; 
        } else if (error) {
            this.error = error; 
            this.data = undefined; 
        }
    }

    // @wire(getAccountWithAnnualRevenue)
    // getDataFromApex( result ) {
        
    //     if (result.data) {
    //         this.accounts = result.data; 
    //         this.error = undefined; 
    //     } else if (result.error) {
    //         this.error = result.error; 
    //         this.data = undefined; 
    //     }
    // }


}

/**
 let result = {
    data : "some data goes here", 
    error : "some error goes here",
 }
 // use destructing to save data and error values into 2 variable 
 let {data , error} = result ; 

 
 */