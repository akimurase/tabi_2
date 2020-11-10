const test = function () {
  console.log("ok")
  const select = document.getElementById("1");
  select.addEventListener('change', function (){
    const eventPrice = document.getElementById("event_price");
    const dataPrice = $("option:selected", this).data("price");
    eventPrice.innerHTML = dataPrice;

  })
  
}



window.addEventListener("load", test);



