$(document).ready(function () {
  $("#add_new").on('click', function(){
    $("#page_button").html("<div id='cancel' class='btn btn-primary btn-toggle-slide float-right'>cancel
      <i class='icon slide-down'></i></div>");
  });

  $("#cancel").on('click', function(){
    $("#page_button").html("<div id='add_new' class='btn btn-primary btn-toggle-slide float-right'>add new goal<i class='icon slide-down'></i></div>");
  });

  $("#graph_view").on('click', function(){
    window.location.href = './1_graph.html';
  });

  $("#list_view").on('click', function(){
    window.location.href = './1_edit.html';
  });

});
