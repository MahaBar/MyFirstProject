import getAllAccounts from '@salesforce/apex/AccountController.getAllAccounts';
import { deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Practice28 extends LightningElement {

    allAccounts; 
    error; 

    @wire(getAllAccounts)
    wiredAccount({ data, error }) {
        
        if (data) {
            this.allAccounts = data; 
            this.error = undefined; 
        } else if (error) {
            this.error = error; 
            this.allAccounts = undefined; 
        }

    } 

    handleDelete(event) {
        // in order to access attribute data-xxxx
        // in this case data.id 
        // we use event.detail.dataset
        console.log('Button clicked');
        console.log(event.target.dataset.id);
        const recordId = event.target.dataset.id; 
        // once we have the recordId to delete we can use
        // deleteRecord lds function
        // and pass the recordId
        // the function call is asynchronous so we need to use then after the method call
        // in here we simply want to display a toast message 
        deleteRecord(recordId).then(()  => { 

            this.dispatchEvent(new ShowToastEvent({
                title: 'Successfully deleted',
                message: 'Successfully deleted',
                variant: 'success'
            }));

        }  )
    }



}