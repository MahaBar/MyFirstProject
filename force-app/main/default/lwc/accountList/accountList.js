import { LightningElement, wire } from 'lwc';
import getBigTechAccounts from '@salesforce/apex/AccountController.getBigTechAccounts';

export default class AccountListMap extends LightningElement {
    mapMarkers = [];
    error;

    @wire(getBigTechAccounts)
    wiredAccounts({ error, data }) {
        if (data) {
            // convert Accounts Array to mapMarkers array 
            this.mapMarkers = data.map(account => {
                return {
                    location: {
                        Street: account.BillingStreet,
                        City: account.BillingCity,
                        State: account.BillingState,
                        Country: account.BillingCountry,
                        PostalCode: account.BillingPostalCode
                    },
                    title: account.Name,
                    description: account.Description,
                    icon: 'standard:account'
                }
            });
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.mapMarkers = undefined;
        }
    }
}
 