// with sharing will enforce record level sharing rules
// without sharing will not enforce record level sharing rules

public with sharing class AccountController {
  /**
   * Create a static method called getAllAccounts
   * @return all the accounts in your salesforce org
   */
  public static List<Account> getAllAccounts() {
    return [SELECT Name, AnnualRevenue FROM Account];
  }

  
  /**
   * Create a static method called getAccountByName
   * @param accName name of account you are searching
   * @return first matching account in your SF org // use soql because we need existing data
   */

  public static Account getAccountByName(String accName) {
    Account a = [
      SELECT Id, Name
      FROM Account
      WHERE name = :accName
      LIMIT 1
    ]; //bind variable
    return a;
  }

  /**
   * Create a static method called getAccountWithAnnualRevenue
   * @param List of accounts in your SF org
   * with AnnualRevenue Field filled up
   */
  public static List<Account> getAccountWithAnnualRevenue() {
    // List<Account> lst = [SELECT Id,Name,AnnualRevenue
    //                     FROM Account
    //                     WHERE AnnualRevenue != null];
    // return lst;
    // we can not use list anywhere, so then we can return directly, this is shorter
    return [
      SELECT Id, Name, AnnualRevenue
      FROM Account
      WHERE AnnualRevenue != NULL
    ];
  }

  /**
   * Create a static method called getMaxRevenue
   * @return max AnnualRevenue for all Accounts in your salesforce org
   */
  public static Decimal getMaxRevenue() {
    AggregateResult result = [
      SELECT MAX(AnnualRevenue) HighestRevenue
      FROM Account
    ];
    // need to cast(casting =changing data type to another data type) the result of get method to decimal
    // or it will throw illegal
    Decimal max = (Decimal) result.get('HighestRevenue');

    return max;
  }

  /**
   * Create a method called getAccOpps
   * @param accName name of account you want to get child opportunity
   * @return List of Opportunity that belong to this account
   *  just look for first match for the account name
   */
  public static List<Opportunity> getAccOpps(String accName) {
    // result of this list of opportunity, so we dont need to create a list and we dont use list again
    // return [SELECT Id,Name, Account.Name
    //          FROM Opportunity
    //          WHERE Account.Name = :accName];
    Account acc = [
      SELECT Id, Name, (SELECT Id, Name FROM Opportunities)
      FROM Account
      WHERE Name = :accName
      LIMIT 1
    ];
    // acc.Name =>  give you account name from the query
    // acc.Id  ==> give you account id from the query
    // acc.Opportunities ==>> all the childs returned here
    return acc.Opportunities;
  }
}
