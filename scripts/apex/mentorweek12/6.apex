// print the unique elements of a given list

List<String> words = new List<String>{'apex','java','apex','phyton', 'apex', 
                                        'javaScript','java','C#','C++'};

for(String eachWord : words ){                  // apex 

    Integer count = 0;                          // 1

    for(String each : words){                   //  apex

        if(each == eachWord)
        count++;
    }

    if(count == 1)
        System.debug(eachWord);
}

    