// practice join, round and intValue methods
// find the max number with max method

List<Double> numbers = new List<Double>{1.2, 3.5, 10.4, 8.6, 9.1};

System.debug(String.join(numbers, ' - '));

for(Double eachNumber : numbers){
    System.debug('Round is ' + eachNumber.round());
    System.debug('IntValue is ' + eachNumber.intValue());
}

Double max = numbers[0];

for(Integer i = 0; i < numbers.size(); i++){
    max = Math.max(max, numbers[i]);
}

System.debug('Max number is ' + max);