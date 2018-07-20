window.setTimeout(function (){ alert('HAMMERTIME'); }, 5000);
// setTimeout is ascyc since it runs indepdenent

function hammerTime(time){
  window.setTimeout(function (){ alert(`${time} is hammertime!`); }, 5000);
}

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// function teaBiscuits(){
//   reader.question('Would you like some tea?',(res) => {})
//
// }
function teaAndBiscuits () {
  let first, second;

  reader.question('Would you like some tea?', (res) => {
    first = res;
    console.log(`You replied ${res}.`);
  });

  reader.question('Would you like some biscuits?', (res) => {
    second = res;
    console.log(`You replied ${res}.`);
  });

  const firstRes = (first === 'yes') ? 'do' : 'don\'t';
  const secondRes = (second === 'yes') ? 'do' : 'don\'t';
  console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
  reader.close();
}
//second reader.question can be nested within the first question