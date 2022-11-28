$(document).ready(function() {
  $('.copyRightbtn').click(function () {
    $('.btn_close2').click();
    $('#pop_info_1').css('display', 'block');
  });
  $('.btn_close1').click(function () {
    $('#pop_info_1').css('display', 'none');
  });

  $('.copyRightbtn2').click(function () {
    $('.btn_close1').click();
    $('#pop_info_2').css('display', 'block');
  });
  $('.btn_close2').click(function () {
    $('#pop_info_2').css('display', 'none');
  });
});
