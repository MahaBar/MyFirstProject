import getAllBooks from "@salesforce/apex/BookController.getAllBooks";
import { LightningElement, wire } from "lwc";
export default class BookStand extends LightningElement {

    allBooks; 
    error; 

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