const test = function () {
  const totalPrice = document.getElementById("total_price");
  const onePrice = document.getElementById("one_price");

    // ----------------------------<コースを選択した時の計算>
  const selectPlan = document.getElementById("plan");
    selectPlan.addEventListener('change', function (){
      // ---<単体の計算（表示）>
      // planのdata属性の値を取得
      const planSelectBox = document.getElementById("plan");
      const dataPrice = planSelectBox.options[ planSelectBox.selectedIndex].getAttribute("data-price");
      // HTMLに反映する
      onePrice.innerHTML = dataPrice;
      // ---<人数選択後コースを変更した時の計算>
      // numのdata属性の値を取得
      const numSelectBox = document.getElementById("num");
      const dataNum = numSelectBox.options[ numSelectBox.selectedIndex].getAttribute("data-multiple");
      // dataPriceとdataNumの計算
      const total = (dataPrice*dataNum);
      totalPrice.innerHTML = total;
      // ----<オプション選択後コースを変更した時の計算>
      // optionのdata属性の値を取得
      const optionSelectBox = document.getElementById("option");
      const dataOption = optionSelectBox.options[ optionSelectBox.selectedIndex ].getAttribute("data-optionprice");



      // 三つの計算
      // const total = (Number(dataPrice*dataNum)+Number(dataOption*dataNum));
      // priceTotal.innerHTML = total;



      
      // ----<フォームに入力>
      // 合計金額の値を取得 
      const displayPriceTotal = totalPrice.innerHTML;
      // 取得した合計金額をフォームに入力
      document.getElementById("f_price").value = displayPriceTotal;
  });

    // --------------------------<人数を選択した時の計算>
  const selectNum = document.getElementById("num");
    selectNum.addEventListener('change', function (){
      // numのdata属性の値を取る
      const numSelectBox = document.getElementById("num");
      const dataNum = numSelectBox.options[ numSelectBox.selectedIndex].getAttribute("data-multiple");
      // 一人料金のidを取得し、値を数字にする
      const priceOne = document.getElementById("one_price");
      const displayPriceOne = priceOne.innerHTML;
      // 計算する
      const total = (displayPriceOne*dataNum);
      // 表示する
      totalPrice.innerHTML = total;
      // ----<フォームに入力>
      // 合計金額の値を取得 
      const displayPriceTotal = totalPrice.innerHTML;
      // 取得した合計金額をフォームに入力
      document.getElementById("f_price").value = displayPriceTotal;
    });

      // ---------------------<オプションを選択した時の計算>
  const selectOption = document.getElementById("option");
    selectOption.addEventListener('change', function(){
      // optionのdata属性の値を取得
      const optionSelectBox = document.getElementById("option");
      const dataOption = optionSelectBox.options[ optionSelectBox.selectedIndex ].getAttribute("data-optionprice");
      // numのdata属性の値を取得
      const numSelectBox = document.getElementById("num");
      const dataNum = numSelectBox.options[ numSelectBox.selectedIndex].getAttribute("data-multiple");
      // planのdata属性の値を取る
      const planSelectBox = document.getElementById("plan");
      const dataPrice = planSelectBox.options[ planSelectBox.selectedIndex].getAttribute("data-price");
      // ３っつの計算
      const total = (Number(dataPrice*dataNum)+Number(dataOption*dataNum));
      // 表示する
      totalPrice.innerHTML = total;
      // ----<フォームに入力>
      // 合計金額の値を取得 
      const displayPriceTotal = totalPrice.innerHTML;
      // 取得した合計金額をフォームに入力
      document.getElementById("f_price").value = displayPriceTotal;
  })

// ---------------------<submitを押した時>
const button1 = document.getElementById("button1");

  button1.addEventListener("click", function(){
    alert("確認画面へ")
  });


}


window.addEventListener("load", test);
