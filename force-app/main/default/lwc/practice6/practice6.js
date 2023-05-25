import { LightningElement } from "lwc";

export default class Practice6 extends LightningElement {
  hired = false;
  graduated = true;
  promoted = false;

  handleHiredChange(event) {
    //event.target will return entire hired checkbox element
    //and we can access the attribute like
    // label , checked , value
    console.log(event.target.label);
    console.log(event.target.checked);
    // console.log(event.target.value);

    // set the value of hired property above
    // to whatever user selected
      this.hired = event.target.checked;
      
      // optionally when this checkbox changed 
      // check if both checkboxes are checked=true
      //so we can set the promoted to true
      
      if (this.hired === true && this.graduated === true) {
          this.promoted = true; 
      } else {
          this.promoted = false; 
      }

  }

  handleGraduatedChange(event) {
    console.log(event.target.label);
    console.log(event.target.checked);
      this.graduated = event.target.checked;
      
    if (this.hired === true && this.graduated === true) {
        this.promoted = true; 
    } else {
        this.promoted = false; 
    }
      
  }
}