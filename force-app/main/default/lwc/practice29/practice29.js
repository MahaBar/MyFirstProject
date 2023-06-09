/* eslint-disable @lwc/lwc/no-async-operation */
import { LightningElement } from "lwc";
export default class Practice29 extends LightningElement {

    showSpinner; 

    constructor() {
        super(); 
        console.log('message from constructor');
        this.showSpinner = true; 
    }


    connectedCallback() {
        console.log('message from connectedCallback method');
        // wait 3 seconds here then make showSpinner value to false 
        setTimeout(() => {
            console.log('done waiting 3 seconds'); 
            this.showSpinner = false; 
        }, 3000);

    }


    renderedCallback() {
        console.log('message from renderedCallback method');
    }




}