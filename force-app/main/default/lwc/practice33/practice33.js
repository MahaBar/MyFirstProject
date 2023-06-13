import { LightningElement } from "lwc";
export default class Practice33 extends LightningElement {

    mapMarkers = [
        {
            location: {
                City: 'San Francisco',
                Country: 'USA',
                PostalCode: '94105',
                State: 'CA',
                Street: 'The Landmark @ One Market, Suite 300',
            },
            value: 'location001',
            title: 'The Landmark Building',
            description:
                'This is my awesome description',
            icon: 'standard:account',
        },
        {   
            location: {
                City: 'Seattle',
                Country: 'USA',
                PostalCode: '98109',
                State: 'WA',
                Street: '410 Terry Ave N',
            },
            value: 'location002',
            title: 'Amazon HQ',
            description:
                'This is my awesome description for amazon HQ',
            icon: 'standard:account',
        }
    ];


}