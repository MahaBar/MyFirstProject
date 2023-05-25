import { LightningElement } from 'lwc';

export default class Practice4 extends LightningElement {


    num1 = 0.00;
    num2 = 0.00;
    result="";

    get additionResult(){

        return this.num1 + this.num2;
    }

    get subtractionResult(){

        return this.num1 - this.num2;
    }

    get multiplicationResult(){

        return this.num1*this.num2;
    }

    get divisionResult(){

        return this.num1/this.num2;
    }

    handleNum1Change(event){
        // set the value of num1 to what user typed
        this.num1 = parseFloat( event.target.value);
    }

    handleNum2Change(event){
        // set the value of num2 to what user typed
        this.num2 = parseFloat( event.target.value);
    }


    handleReset(){
        this.num1 = "";
        this.num2 = "";
    }



}