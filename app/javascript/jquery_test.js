$(function() {
  console.log("OK")
  $('#event_plan_id').on('change',function(e){
    // const dataSelect = $(this).attr('data-price')
    //spoonとunitを定義
    const dataPrice = $("option:selected", this).data("price");
    //データを入れる
    $("#event_price").text(dataPrice)
  });
});