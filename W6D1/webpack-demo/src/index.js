import _ from 'lodash';
function component() {
  var element = document.createElement('div');

  
  //loadash, no imported by this script
  element.innerHTML = _.join(['Hello', 'webpack'], ' ');

  return element;
}

document.body.appendChild(component());
