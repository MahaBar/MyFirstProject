import { LightningElement, api } from "lwc";
export default class Practice34 extends LightningElement {
    @api
    message;

    @api
    price; 

    @api
    options;  // Red, Green, Blue from the targetConfig in xml file

    // dynamically get the style according to the option selected 
    get style() {
        return `background-color: ${this.options};`
    }
}