Employee e1 = new Employee('Josh', 'Developer', 101);
System.debug('e1 value is : ' + e1);

Employee.taxRate = 0.2;// static variable just class name

Employee e2 = new Employee('Andrei', 'Admin');
System.debug('e2 value is : ' + e2);

e1.print();
e2.printVar();

System.debug('The Employee name : ' + e1.name); 

e1.work();
e1.study('App Builder');
e1.averageScore(95.5, 66.4, 2);



// Employee e2 = new Employee();
// e2.name = 'Andrei';
// e2.role = 'Admin';
// e2.id = 102;
// System.debug(e2); 
