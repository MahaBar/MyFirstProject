import getAllBooks from "@salesforce/apex/BookController.getAllBooks";
import { LightningElement, wire } from "lwc";
export default class BookStand extends LightningElement {

    allBooks; 
    error; 

    selectedBookId;

    //method that handle the select event 
    // fired from the child handleClick method
    // get the data and do anything with it 
    // in this case simply set selectedBookId property
    handleBookSelected(event) {
        console.log('parent responding to child select event and data ' + event.detail); 
        this.selectedBookId = event.detail; 
    }


    @wire(getAllBooks)
    wiredBooks( {data, error}  ) {
        
        if (data) {
            this.allBooks = data;
            this.error = undefined; 
            console.log(this.allBooks); 
        } else if (error) {
            this.allBooks = undefined;
            this.error = error; 
        }

    }


}