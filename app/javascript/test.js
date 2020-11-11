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

  const selectNum = document.getElementById("num");

  selectNum.addEventListener('change', function (){
    // 一人料金のidを取得し、値を数字にする
    const priceOne = document.getElementById("one_price");
    const priceDisplay = priceOne.innerHTML;
    // data属性の値を取る
    const numSelectBox = document.getElementById("num");
    const dataNum = numSelectBox.options[ numSelectBox.selectedIndex].getAttribute("data-multiple");
    // 計算する
    const total = (priceDisplay*dataNum);
    // 表示する
    priceTotal.innerHTML = total;
  })



}


window.addEventListener("load", test);
