$(document).ready(function () {

  alert("fs-goalplanner.js loaded");

  $("#add_new").on('click', function(){
    $("#page_button").html("<div id='cancel' class='btn btn-primary btn-toggle-slide float-right'">cancel
  });

  $("#cancel").on('click', function(){
    $("#page_button").html("<div id='add_new' class='btn btn-primary btn-toggle-slide float-right'"">add new goal</div>");
  });

  $("#graph_view").on('click', function(){
    window.location.href = './1_graph.html';
  });

  $("#list_view").on('click', function(){
    window.location.href = './1_edit.html';
  });

});
