List<Integer> numberList = new List<Integer>{37,89,66,54,98};
System.debug('starting the code'); 


try {
    
    System.debug('numberList[1] value is : ' + numberList[1]);
    // System.debug('numberList[5] value is : ' + numberList[5]);

} catch (ListException e) { // e = new ListException
    
    System.debug('index out of bound!!!!!!!!'); 
    System.debug('numberList[numberList.size()-1] value is : ' + numberList[numberList.size()-1]);
       
}
System.debug('ending the code'); 


