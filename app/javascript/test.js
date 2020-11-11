const test = function () {
  const selectPlan = document.getElementById("plan");
  const priceTotal = document.getElementById("total_price");
  const priceOne = document.getElementById("one_price");

    selectPlan.addEventListener('change', function (){
      // data属性の値を取る
      const planSelectBox = document.getElementById("plan");
      const dataPrice = planSelectBox.options[ planSelectBox.selectedIndex].getAttribute("data-price");
      // HTMLに反映する
      priceOne.innerHTML = dataPrice;
  })





}


window.addEventListener("load", test);
