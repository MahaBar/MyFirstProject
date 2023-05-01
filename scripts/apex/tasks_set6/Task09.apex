/**
9. Create an Boolean Array with 10 elements and count the the number of true value
 */
Integer[] boolList = new Integer[10];
boolList[0] = 11;
boolList[1] = 6;
boolList[2] = 44;
boolList[3] = 15;
boolList[4] = 2;
boolList[5] = 4;
boolList[6] = 15;
boolList[7] = 33;
boolList[8] = 1;
boolList[9] = 15;

Boolean is15 = true;
Integer count = 0;
for(Integer each : boolList) {
    if( each == 15){
        is15 = true;
        count ++;
    }
}
System.debug(count);   