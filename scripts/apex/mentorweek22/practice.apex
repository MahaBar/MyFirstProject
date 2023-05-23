// after abstract
/* SalesforceStudent st1 = new SalesforceStudent('Zero to Hero', 'Andrei Vitiuc');
System.debug(st1);
st1.welcome();
st1.printInfo();
System.debug(st1.grade(100.0, 80.0));
System.debug('--------------------'); */

SalesforceStudent st2 = new AlumniStudent('Alumni', 'Merry Tew', 3);
System.debug(st2);
st2.welcome();  // from parent
st2.printInfo();  
// st2.study(); no implements 
System.debug('--------------------');

AlumniStudent st3 = new AlumniStudent('Alumni', 'Ben Mark', 1);
System.debug(st3);
st3.welcome();  // from parent
st3.printInfo(); 
st3.study();    // from interface
System.debug('--------------------');

SalesforceStudent st4 = new ZeroToHeroStudent();
System.debug(st4);
st4.welcome();  // from parent
st4.printInfo();  
// st4.study(); no implements 
System.debug(st4.grade(78.5, 88.2));
System.debug('--------------------');

ZeroToHeroStudent st5 = new ZeroToHeroStudent('Zero to Hero', 'Vita Drozdova', 1);
System.debug(st5);
st5.welcome();  // from parent
st5.printInfo();  
st5.study(); 
System.debug('--------------------');

List<SalesforceStudent> allStudents = new List<SalesforceStudent>();
// allStudents.add(st1);    after abstract
allStudents.add(st2);
allStudents.add(st3);
allStudents.add(st4);
allStudents.add(st5);

// System.debug(st1 instanceOf AlumniStudent);  after abstract
System.debug(st2 instanceOf AlumniStudent);
System.debug(st4 instanceOf ZeroToHeroStudent);

List<ZeroToHeroStudent> allHeroStudents = new List<ZeroToHeroStudent>();

for(SalesforceStudent each : allStudents){

    if(each instanceof ZeroToHeroStudent){

        ZeroToHeroStudent heroStudent = (ZeroToHeroStudent) each;
        allHeroStudents.add(heroStudent);
    }
}

System.debug(allHeroStudents);