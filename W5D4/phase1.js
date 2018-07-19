function madLib(verb, adjective, noun){
  return "We shall ${verb.toUpperCase()} the ${adjective.toUpperCase} ${noun.toUpperCase}."
}

madLib('make', 'best', 'guac')


function isSubstring(searchString, sub){
  output = searchString.includes(sub)
  return output;
}

function fizzBuzz(array){
  var output = [];
  for(i=0; i<array.length;i++){
    var add = false;
    if (array[i] % 3 == 0) {
      add = true;
    }
    if (array[i] % 5 == 0) {
      add = true;
    }
    if ((array[i] % 3 == 0) && (array[i] % 5 == 0)) {
      add = false;
    }

    if (add == true){
      output.push(array[i]);
    }

  }
  return output;
}

function isPrime(num){
  if (num === 0 || num === 1){
    return false;
  }
  for(i=2; i< num; i++){
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

function sumOfNPrimes(num){
  let sum = 0;
  let primes = []
  let i = 0;

  while (primes.length < num){
    if (isPrime(i)){
      primes.push(i);
    }
    i+=1;
  }
  for(i=0;i<primes.length;i++){
    sum += primes[i]
  }
  return sum;
}
