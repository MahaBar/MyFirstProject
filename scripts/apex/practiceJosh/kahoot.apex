List<String> listA = new List<String>{'apple', 'banana','cherry'};
List<String> listB = listA;
List<String> listC = new List<String>(listA);
List<String> listD = new List<String>();

listD.addAll(listA);
listA.clear();
// listA.add('orange');

System.debug(listB.size());
System.debug(listC.size());
System.debug(listD.size());
