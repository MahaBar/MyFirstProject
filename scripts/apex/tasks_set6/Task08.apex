/**
8. Create an String Array with 10 elements and print them in reverse order
 */
String[] newArray = new String[10];
newArray[0] = 'a';
newArray[1] = 'b';
newArray[2] = 'c';
newArray[3] = 'd';
newArray[4] = 'e';
newArray[5] = 'f';
newArray[6] = 'g';
newArray[7] = 'h';
newArray[8] = 'i';
newArray[9] = 'k';

for(Integer index=newArray.size()-1; index>=0 ;index--) {
    System.debug(newArray.get(index)); 
}  