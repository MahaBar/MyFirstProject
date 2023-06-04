import { LightningElement } from "lwc";
export default class Practice13 extends LightningElement {

    salary = 140000; 

    handleSalaryChange(event) {
        
        this.salary = event.target.value; 

    }

    get notTooBad() {
        return this.salary >= 100000
              && this.salary <= 135000; 
    }

    get averageSalary() {
        return this.salary > 135000
        && this.salary <= 175000; 
    }

}