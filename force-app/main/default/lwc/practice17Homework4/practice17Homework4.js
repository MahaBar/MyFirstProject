import { LightningElement, wire } from "lwc";
import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";

export default class practice17Homework4 extends LightningElement {
  sliderValue = 50000;
  //property to store the result.data portion of wired result
  accounts;
  // property to store the result.error portion of the wired result, not used in this task
  error;
  // columns 
  columns = [
    { label: 'Account Name', fieldName: 'Name' },
    { label: 'Annual Revenue', fieldName: 'AnnualRevenue' },
  ];

  handleSliderChange(event) {
    this.sliderValue = event.detail.value;
    console.log(event)
    console.log(JSON.stringify(event, null, 2));
    console.log(JSON.stringify(event.target, null, 2));
    console.log(JSON.stringify(event.detail, null, 2));

  }

  get filteredAccount() {
    // if there is data to return , return filtered result
    if (this.accounts) {
      return this.accounts.filter(
        (each) => each.AnnualRevenue <= this.sliderValue
      );
    }
    //   or return empty array
    return [];
  }

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
  myWiredAccountsOrCallItAnything({ data, error }) {
    // destructing the result we got from apex into data and error variable using destructing syntax

    if (data) {
      this.accounts = data;
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.data = undefined;
    }
  }
}

/**
 let result = {
    data : "some data goes here", 
    error : "some error goes here",
 }
 // use destructing to save data and error values into 2 variable 
 let {data , error} = result ; 
 
 */