import { LightningElement } from "lwc";
export default class Practice30 extends LightningElement {

    inputMsg ; 

    handleChange(event) {
        this.inputMsg = event.target.value; 
    }

}