trigger BookTrigger on Book__c(
  before insert,
  after insert,
  before update,
  after update,
  before delete,
  after delete,
  after undelete
) {
  System.debug('Trigger is running for Event : ' + Trigger.operationType);

  if (Trigger.isBefore && Trigger.isUpdate) {
    BookTriggerHandler.handleBeforeUpdate(Trigger.new , Trigger.oldMap); 

  }


  // Requirement : When the new book is created or updated
  // if the year is empty ==> set it to 1999
  // THIS NEED TO BE WRITTEN IN BEFORE_INSERT OR BEFORE_UPDATE
  if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
    BookTriggerHandler.handleBeforeInsertUpdate(Trigger.new);
  }


    // when the record is restored from recycle bin
  // send an email to logged in user 
  // subject :  XX Book has been restored 
  // Body    :  Make sure this book supposed to be restored 
  if(Trigger.isAfter && Trigger.isUndelete){

    BookTriggerHandler.handleAfterUndelete(Trigger.new);

  }






  // Requirement : When the Name of Book is updated
  // for now print out the old value of the Book name
  // BEFORE UPDATE IS PROPER EVENT FOR THIS CASE

  // Trigger.old => store the List of record entered the trigger
  // however it store the old field values right before the update
  // if (Trigger.isBefore && Trigger.isUpdate) {
    //List<Book__c> with old field values
  //  for (Book__c eachOld : Trigger.old) {
  //    System.debug('eachOld.Name value is : ' + eachOld.Name);
  //  }
  //}

}












