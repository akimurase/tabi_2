const test = function () {
  const selectPlan = document.getElementById("plan");
  const priceTotal = document.getElementById("total_price");
  const priceOne = document.getElementById("one_price");

  // ------<コースを選択した時の計算>
    selectPlan.addEventListener('change', function (){
      // ------<単体の計算（表示）>
      // planのdata属性の値を取る
      const planSelectBox = document.getElementById("plan");
      const dataPrice = planSelectBox.options[ planSelectBox.selectedIndex].getAttribute("data-price");
      // HTMLに反映する
      priceOne.innerHTML = dataPrice;
      // ------<コースを変更した時の計算>
      // numのdata属性の値を取得
      const numSelectBox = document.getElementById("num");
      const dataNum = numSelectBox.options[ numSelectBox.selectedIndex].getAttribute("data-multiple");
      // dataPriceとdataNumの計算
      const total = (dataPrice*dataNum);
      priceTotal.innerHTML = total;
  })

  const selectNum = document.getElementById("num");

  // ------<人数を選択した時の計算>
  selectNum.addEventListener('change', function (){
    // data属性の値を取る
    const numSelectBox = document.getElementById("num");
    const dataNum = numSelectBox.options[ numSelectBox.selectedIndex].getAttribute("data-multiple");
    // 一人料金のidを取得し、値を数字にする
    const priceOne = document.getElementById("one_price");
    const priceDisplay = priceOne.innerHTML;
    // 計算する
    const total = (priceDisplay*dataNum);
    // 表示する
    priceTotal.innerHTML = total;
  })


  // ------<人数を選択した時の計算>
  // selectOption.addEventListener('change', function()){
  //   const 
  // }


}


window.addEventListener("load", test);
