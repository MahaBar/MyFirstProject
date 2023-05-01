/*
1. Create a list of Decimal named 'cheapList' and 
add these 5 elements into the list. 
(2.75, 5.99, 8.25, 9.50, 9.99)

2. Create another list of Decimal named 'priceyList' and add these 6 elements into the list. (15.75, 5.99, 19.25, 25.50, 9.99, 7.50)

3. If any element in the 'priceyList' is less than 10, add that element into 'cheapList'.

4. Also, remove those elements (with the value of less than 10) from the 'priceyList'.

5. Finally, print out the elements in both lists and the size of the lists.
*/

// // 1.
// List<Decimal> cheapList = new List<Decimal>{2.75, 5.99, 8.25, 9.50, 9.99 };

// // 2.
// List<Decimal> priceyList = new List<Decimal>{15.75, 5.99, 19.25, 25.50, 9.99, 7.50 };

// List<Decimal> priceyList2 = new List<Decimal>();

// 3.
// for(Decimal eachPrice : priceyList ){
//     if(eachPrice < 10){
//         cheapList.add(eachPrice);
//     }
// }

// // 4.
// List<Decimal> priceyList2 = new List<Decimal>();
// for(Decimal eachPrice : priceyList){
//     if(eachPrice > 10){
//         priceyList2.add(eachPrice);
//     }
// }

List <Decimal> cheapList = new List <Decimal> {2.75, 5.99, 8.25, 9.50, 9.99};

List <Decimal> priceyList = new List <Decimal> {15.75, 5.99, 19.25, 25.50, 9.99, 7.50};

List <Decimal> priceyList2 = new List <Decimal> ();

for (Decimal eachPrice : priceyList ){
    if (eachPrice < 10){
        cheapList.add(eachPrice);
    }else {
        priceyList2.add(eachPrice);
    }
}

System.debug('The elements in the cheaplist: ' + cheapList);
System.debug('The elements in the priceyList2: ' + priceyList2);

System.debug('The size of the cheapList: ' + cheapList.size());
System.debug('The size of the priceyList2: ' + priceyList2.size());
