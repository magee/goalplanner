$(document).ready(function () {

  $("#add_new").on('click', function(){
    $("#page_button").html("<div id='cancel' class='btn btn-primary btn-toggle-slide float-right'>cancel</div>");
  });

  $("#cancel").on('click', function(){
    $("#page_button").html("<div id='add_new' class='btn btn-primary btn-toggle-slide float-right'>add new goal</div>");
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

  $(function() {
    $( "#datepicker" ).datepicker();
  });

});

