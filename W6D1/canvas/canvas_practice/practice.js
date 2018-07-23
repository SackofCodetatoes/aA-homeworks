document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas'); // in your HTML this element appears as <canvas id="myCanvas"></canvas>
  canvas.height = 500;
  canvas.width = 500;
  const ctx = canvas.getContext('2d');

  ctx.fillStyle = "red";
  ctx.fillRect(0, 0, 500, 500);

  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "yellow";
  ctx.lineWidth = 3;
  ctx.stroke();

});
