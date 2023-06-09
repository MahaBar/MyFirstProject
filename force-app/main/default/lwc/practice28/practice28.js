import getAllAccounts from "@salesforce/apex/AccountController.getAllAccounts";
import { deleteRecord } from "lightning/uiRecordApi";
import { LightningElement, wire } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
// in order to force refresh wired data result 
// we need to import refreshApex method from @salesforce/apex 
import { refreshApex } from "@salesforce/apex"


export default class Practice28 extends LightningElement {
  // allAccounts;
  // error;

  @wire(getAllAccounts)
  allAccounts; 
  // wiredAccount({ data, error }) {
  //   if (data) {
  //     this.allAccounts = data;
  //     this.error = undefined;
  //   } else if (error) {
  //     this.error = error;
  //     this.allAccounts = undefined;
  //   }
  // }

  handleDelete(event) {
    // in order to access attribute data-xxxx
    // in this case data.id
    // we use event.target.dataset.whatevernameThatYouGive
    console.log("Button clicked");
    console.log(event.target.dataset.id);
    const recordIdToDelete = event.target.dataset.id;
    // once we have the recordId to delete we can use
    // deleteRecord lds function
    // and pass the recordId
    // the function call is asynchronous so we need to use then after the method call
    // in here we simply want to display a toast message
    deleteRecord(recordIdToDelete).then( () => {
        // show a toast message after delete 
      this.dispatchEvent(
        new ShowToastEvent({
          title: "Successfully deleted",
          message: "Successfully deleted",
          variant: "success"
        })
      );
        // the list is not refreshed after deletion 
        // TODO : somehow refresh the wired result
        // so the wire method get called again by force
        // since it' cached it will not be called again
        // unless instructed to do so
      refreshApex( this.allAccounts);
    });
      
      
  }
}