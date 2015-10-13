$(document).ready(function() {

  $('#nav').on('click', 'a', function(e) {
    e.preventDefault();
    var $clickedLink = $(this).attr('id');

    if ( $clickedLink === 'register' ) {
      $('form').attr('id', 'register-form');
      $('form').attr('action', '/users');
    } else if ( $clickedLink === 'login' ) {
      $('form').attr('id', 'login-form');
      $('form').attr('action', '/login');
    } else if ( $clickedLink === 'logout' ) {
      console.log('log out TBD')
    }

    $('#form-wrapper').toggleClass('invisible');
  });

  $('form').submit(function(e) {
    e.preventDefault();
    $('#form-wrapper').toggleClass('invisible');

    var routeUrl = $(this).attr('action');
    var formData = $(this).serialize();

    var requestHandler = $.ajax({
      url: routeUrl,
      method: 'post',
      data: formData
    });

    requestHandler.done(function(response, status) {
      console.log("TBD next");
    });

    requestHandler.fail(function(jqXHR, textStatus, errorThrown) {
      console.log("TBD next");
    });

  })


});
