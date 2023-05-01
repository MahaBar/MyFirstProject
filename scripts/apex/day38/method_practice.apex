// Opportunity o1 = Utils.getOneOpportunity('Test ', true);
// System.debug('o1 value is : ' + o1);

// Opportunity o2 = Utils.getOneOpportunity('Test2', false);
// System.debug('o2 value is : ' + o2);

// List<Opportunity> opps1 = Utils.getManyOpps('Music', 5, true);
// System.debug('opps1 value is : ' + opps1);


// List<Opportunity> opps2 = Utils.getManyOpps('Opp Under account', 3, false);
// System.debug('opps2 value is : ' + opps2);

// // insert opps2;

// // Create an Account using Utils.insertNewAccount
// Account newAcc = Utils.insertNewAccount('Galactic Empire');
// // and put all opps2 under this account 
// // in order to do that we need to set AccountId field of all opps in the list to newAcc.Id
// for(Opportunity each : opps2) {
//     each.AccountId = newAcc.id;    
// }
// insert opps2;

// we calling the method 
// Account acc = Utils.insertAccountWithOpps('Skywalker Inc', 4);
// System.debug('acc value is : ' + acc);

// Account a1 = AccountController.getAccountByName('Skywalker Inc');
// System.debug('a1 value is : ' + a1);


// List<Account> accLstWithRevenue = AccountController.getAccountWithAnnualRevenue();
// System.debug('accLstWithRevenue value is : ' + accLstWithRevenue);

System.debug('AccountController.getMaxRevenue() value is : ' + AccountController.getMaxRevenue());
     




























