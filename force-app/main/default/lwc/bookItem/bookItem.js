import { LightningElement,api } from "lwc";
export default class BookItem extends LightningElement {

    // book = {
    //     Id    : 'CoolIdGoeHereEventually',
    //     Name  : "Awesome Book",
    //     Price__c : 100
    // }
    @api
    book; 

    handleClick() {
        console.log(this.book);
        // dispatch event and send teh book Id as data 
        const myEvent = new CustomEvent('select', {detail: this.book.Id }  );
        this.dispatchEvent(myEvent); 
        console.log(this.book.Id); 
    }

}