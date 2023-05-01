List<Account>allAccounts = [SELECT Name, Phone, AnnualRevenue FROM Account];

for (Account each : allAccounts) {
    System.debug('Current value : ' + each.Name);
}