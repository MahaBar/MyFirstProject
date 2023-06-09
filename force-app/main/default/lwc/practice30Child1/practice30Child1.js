import { LightningElement, api } from 'lwc';

export default class Practice30Child extends LightningElement {

    //message = prac'Hello World';

    @api // make this property public , so parent can provide the value 
    message; 

    @api
    num; 
    // property that contains uppercase
    @api
    myProperty; 

}