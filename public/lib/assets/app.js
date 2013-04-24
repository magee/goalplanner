$(document).ready(function () {
  alert("the app.js file loaded");

  $("#add_new").on('click', function(){
    $("#page_button").html("<div id='cancel' class='btn btn-primary btn-toggle-slide float-right'>cancel
      <i class='icon slide-down'></i></div>");
  });

  $("#cancel").on('click', function(){
    $("#page_button").html("<div id='add_new' class='btn btn-primary btn-toggle-slide float-right'>add new goal<i class='icon slide-down'></i></div>");
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
});
