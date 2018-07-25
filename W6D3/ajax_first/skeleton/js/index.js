console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  type: 'GET',
  url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b",
  error(){
     location.href = "https://home.openweathermap.org/users/sign_up";
  },
  success(data){
    console.log(data);
  }
});
// $.ajax({
//     type: 'GET',
//     url: "http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=bcb83c4b54aee8418983c2aff3073b3b",
//     success(data) {
//       console.log("We have your weather!")
//       console.log(data);
//     },
//     error() {
//       console.error("An error occurred.");
//     },
//  });
// It should be a GET request.
// It should get the New York weather from this url: http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b
// If the request fails, sign up for your own API key here and stick that key in place of bcb83c4b54aee8418983c2aff3073b3b.
// It should take a success callback
// In the success callback, console.log out what the weather is.

// Add another console log here, outside your AJAX request
