$(function(){

//(1)ページの概念・初期ページを設定
var page=0;

//(2) イメージの数を最後のページとして変数化
var lastPage=parseInt($("#slide img").length-1);

//(3) 最初に全てのイメージを非表示にする
$("#slide img").css("display","none");

//(4) 初期ページを表示
$("#slide img").eq(page).css("display","block");

//(5)ページ切り替え用、自作関数作成
function changePage(){
  $("#slide img").fadeOut(1000);
  $("#slide img").eq(page).fadeIn(1000);
}

var Timer;
function startTimer(){
Timer =setInterval(function(){
          if(page === lastPage){
                         page = 0;
                         changePage();
               }else{
                         page ++;
                         changePage();
          };
     },5000);
}
//（７）～秒間隔でイメージ切換の停止設定
function stopTimer(){
clearInterval(Timer);
}

//（８）タイマースタート
startTimer();

/*オプションを足す場合はここへ記載*/


})
