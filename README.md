# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

window.addEventListener("load", () => {
  console.log("OK")
});


      <div class='form-wrap'>
    <%= f.label :number,  "カード番号" %>
    <%= f.text_field :number, id:"number", placeholder:"カード番号(半角英数字)", maxlength:"16" %>
  </div>
  <div class='form-wrap'>
    <%= f.label :cvc ,"ＣＶＣ" %>
    <%= f.text_field :cvc, id:"cvc", placeholder:"カード背面4桁もしくは3桁の番号", maxlength:"3" %>
  </div>
  <div class='form-wrap'>
    <p>有効期限</p>
    <div class='input-expiration-date-wrap'>
      <%= f.text_field :exp_month, id:"exp_month", placeholder:"例)3" %>
      <p>月</p>
      <%= f.text_field :exp_year, id:"exp_year", placeholder:"例)24" %>
      <p>年</p>
    </div>
  </div>





   <div class='form-wrap'>
    <%= f.label :price, "金額" %>
    <%= f.text_field :price, class:"price", placeholder:"例)2000" %>
  </div>
  <div class='form-wrap'>
    <%= f.label :number,  "カード番号" %>
    <%= f.text_field :number, class:"number", placeholder:"カード番号(半角英数字)", maxlength:"16" %>
  </div>
  <div class='form-wrap'>
    <%= f.label :cvc ,"ＣＶＣ" %>
    <%= f.text_field :cvc, class:"cvc", placeholder:"カード背面4桁もしくは3桁の番号", maxlength:"3" %>
  </div>
  <div class='form-wrap'>
    <p>有効期限</p>
    <div class='input-expiration-date-wrap'>
      <%= f.text_field :exp_month, class:"exp_month", placeholder:"例)3" %>
      <p>月</p>
      <%= f.text_field :exp_year, class:"exp_year", placeholder:"例)24" %>
      <p>年</p>
    </div>
