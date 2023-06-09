import { LightningElement,api } from 'lwc';
import BOOK_OBJECT from '@salesforce/schema/Book__c';

export default class BookForm extends LightningElement {

    // this recordId will be passed from the parent 
    @api
    recordId; 

    objectApiName = BOOK_OBJECT; 

}