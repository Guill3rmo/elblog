$(document).ready(function() {

	$('.like_btn').click(function(){
    iduser = $('.like_btn').attr('data-postid');
    idcomment = $('.like_btn').attr('data-commentid');
    

    doLike(iduser, idcomment);
    console.log(iduser);
    console.log(idcomment );
    return false;
  });


function doLike(idcomment, iduser) {

alert.("hola");
}