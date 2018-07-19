// function printCallback {
//   "Mx. ${name} Jingleheimer Schmidt"
// }

function titelize(names, callback){
  let titelized = names.map(name => "Mx. ${name} Jingleheimer Schmidt");
  callback(titelized)
}
