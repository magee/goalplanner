$(document).ready(function () {


  $(".21578242").hover(function() {
    $(".milestonetasks").addClass("hidden");
    $(".tid_03").removeClass("hidden");
  });

  $(".92282751").hover(function() {
    $(".milestonetasks").addClass("hidden");
    $(".tid_04").removeClass("hidden");
  });

  $(".298486374").hover(function() {
    $(".milestonetasks").addClass("hidden");
    $(".tid_02").removeClass("hidden");
  });

  $(".339908452").hover(function() {
    $(".milestonetasks").addClass("hidden");
    $(".tid_05").removeClass("hidden");
  });

  $(".457008489").hover(function() {
    $(".milestonetasks").addClass("hidden");
    $(".tid_11").removeClass("hidden");
  });

  $("#identifyblogs").on('click', function(){
      $('#457008489').addClass('progress-100');
  });

  $('#identifyblogs').on('click', function(){
    var is_checked = $('#identifyblogs').is(':checked');
    if (is_checked) {
      $('.457008489').removeClass('progress-0');
      $('.457008489').addClass('progress-100');
    } else {
      $('.457008489').removeClass('progress-100');
      $('.457008489').addClass('progress-0');
    }
  });

  $(".1047793131").hover(function() {
    $(".milestonetasks").addClass("hidden");
    $(".tid_06").removeClass("hidden");

  });

  $("#add_new").on('click', function(){
    $("#page_button").html("<div id='cancel' class='btn btn-primary btn-toggle-slide float-right'>cancel</div>");
  });

  $("#cancel").on('click', function(){
    $("#page_button").html("<div id='add_new' class='btn btn-primary btn-toggle-slide float-right'>add new goal</div>");
  });

  $('#storyideas').on('click', function(){
    var is_checked = $('#storyideas').attr('checked');
    alert(":" + is_checked);
  });


  $('#targetjournalists1').on('click', function(){
    var is_checked = $('#targetjournalists1').is(':checked');
    if (is_checked) {
      $('.21578242').addClass('progress-30');
      $('.21578242').removeClass('progress-0');
    } else {
      $('.21578242').removeClass('progress-30');
      $('.21578242').addClass('progress-0');
    }
  });


  $('#targetjournalists2').on('click', function(){
    var is_checked = $('#targetjournalists2').is(':checked');
    if (is_checked) {
      $('.21578242').removeClass('progress-30');
      $('.21578242').addClass('progress-60');
    } else {
      $('.21578242').addClass('progress-30');
      $('.21578242').removeClass('progress-60');
    }
  });

  $('#targetjournalists3').on('click', function(){
    var is_checked = $('#targetjournalists3').is(':checked');
    if (is_checked) {
      $('.21578242').removeClass('progress-60');
      $('.21578242').addClass('progress-100');
    } else {
      $('.21578242').addClass('progress-60');
      $('.21578242').removeClass('progress-100');
    }
  });

  $("div.tid_01").hover(function(){
    $("div.table-box table").addClass("hidden");
    $("table.tid_01").removeClass("hidden");
  });

  $("div.tid_02").hover(function(){
    $("div.table-box table").addClass("hidden");
    $("table.tid_02").removeClass("hidden");
  });

  $("div.tid_03").hover(function(){
    $("div.table-box table").addClass("hidden");
    $("table.tid_03").removeClass("hidden");
  });

  $("div.tid_04").hover(function(){
    $("div.table-box table").addClass("hidden");
    $("table.tid_04").removeClass("hidden");
  });

  $("div.tid_05").hover(function(){
    $("div.table-box table").addClass("hidden");
    $("table.tid_05").removeClass("hidden");
  });

  $("div.tid_06").hover(function(){
    $("div.table-box table").addClass("hidden");
    $("table.tid_06").removeClass("hidden");
  });

  var goal_title = "";
  var launch_on;

  $("span#goal-title").text(goal_title);
  $("span#email-display").text(email);
  $(".inplace-edit").click(function() {
    $(".user-edit").toggle();
  });

  var firstname = "Carolyn";
  var lastname = "Morris";
  var email = "cmorris@domain.com";
  $("span#username").text(firstname + " " + lastname);
  $("span#email-display").text(email);
  $("#inplace-edit").click(function() {
    $(".user-edit").toggle();
    if ($(this).text() === "edit") {
      $(this).text("save");
    } else {
      firstname = $("#firstname").val();
      lastname = $("#lastname").val();
      email = $("#email").val();
      $("span#username").text(firstname + " " + lastname);
      $("span#email-display").text(email);
      $(this).text("edit");
    }
  });
});

