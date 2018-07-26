document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  const add_list_items = (event) => {
    
  }


  // adding SF places as list items
  // --- your code here!
// function toggleLi (event) {
//   currentTarget
//   event.target
// }

  // adding new photos

  // --- your code here!



});
