import { LightningElement } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

export default class Practice14 extends LightningElement {
  showSpinner = false;

  handleClick() {
    // set the value of showSpinner to true
    this.showSpinner = true;
    // wait 3 seconds and make it false
    // eslint-disable-next-line @lwc/lwc/no-async-operation
    setTimeout(() => {
      this.showSpinner = false;
      this.handleShowSuccessToast();
    }, 3000);
  }
  /**
   * In order to show toast message in LWC ,
   * need to import
   * import { ShowToastEvent } from "lightning/platformShowToastEvent";
   *  create a ShowToastEvent object
   *  provide constructor parameter with all the details of toast message
   *  {
   *  title   -> toast title
   *  message -> the detail of the toast
   *  variant -> success , warning, info , error
   *  }
   *  eventually dispatch the event you created
   *  so salesforce can catch it and display the toast
   */
  handleShowSuccessToast() {
    // create showToastEvent object and provide details
    const event = new ShowToastEvent({
      title: "Awesome Success Title",
      message: "Your awesome actions has succeed! HIRED!!",
      variant: "success"
    });
    // eventually dispatch this event manually so it can show the toast message
    this.dispatchEvent(event);
  }

  handleShowErrorToast() {
    // create showToastEvent object and provide details
    const event = new ShowToastEvent({
      title: "Awesome Error Title",
      message: "Your awesome actions has failed! TRY AGAIN!!",
      variant: "error"
    });
    // eventually dispatch this event manually so it can show the toast message
    this.dispatchEvent(event);
  }
    
}