import { LightningElement, wire } from "lwc";
import { NavigationMixin } from 'lightning/navigation';
import getOneContact from "@salesforce/apex/ContactController.getOneContact";

export default class Practice31 extends NavigationMixin(LightningElement) {

    @wire(getOneContact)
    myContact;  // {data}

    handleNavigateToHome() {
        console.log('Navigating to Home Page');

        // use the method from NavigationMixin in this way 
        // this[NavigationMixin.Navigate]( PageReference )
        // PageReference Doc
        //https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.reference_page_reference_type

        this[NavigationMixin.Navigate]( {
            type: 'standard__namedPage',
            attributes: {
                pageName: 'home'
            }
        } ); 
        
    }

    handleNavigateToCustomTab() {
        
        // lwc-nav-TheTypeOfPage you want to go 
        this[NavigationMixin.Navigate]({
            type: 'standard__navItemPage',
            attributes: {
                apiName: "Day_1"
            }
        });

    }

    handleNavigateToCaseHome() {
        
        // lwc-nav-object-page
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                actionName: "home",
                // actionName:"list",
                objectApiName: "Case"
            },
            // state: {
            //     filterName:"00BDm000003yv9VMAQ"
            // }
        });

    }

    handleNavigateToAccountCreation() {
        
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                actionName: "new",
                objectApiName: "Account"
            }, 
            state: {
                defaultFieldValues : "Name=DefaultName,Phone=123456789"
            }

        });

    }

    handleNavigateToRecordPage() {
        
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                actionName: "view",
                // actionName: "edit",
                recordId: this.myContact.data.Id ,                  // "003Dm000004bW3tIAE",
                // objectApiName: "Contact"
            }
        });

    }

}