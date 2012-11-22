$(document).ready(function() {

  $('.share_button').click(function(){
    data_url = $('.share_button').attr('fb-url');
    data_title = $('.share_button').attr('fb-title');

    postToFeed(data_url, data_title);
    console.log(data_title);
    console.log(data_url);
    return false;
  });

  FB.init({appId: 172778072866464, status: true, cookie: true});


  function postToFeed(url, title) {
     
    // calling the API ...
    var obj = {
      method: 'feed',
      redirect_uri: url,
      
      picture: 'http://2.bp.blogspot.com/-4XUM5yRkQ-A/TWXDfD6elmI/AAAAAAAAAFg/N9BE0bHg_-E/s1600/1302_champeta_zoom%255B1%255D.jpg',
      name: 'El blog de Guille ',
      caption: title
    };
  
    function callback(response) {
      document.getElementById('msg').innerHTML = "Post ID: " + response['post_id'];
    }
  
    FB.ui(obj, callback);
  }

});