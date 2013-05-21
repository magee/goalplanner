$(document).ready(function () {

  $("#add_new").on('click', function(){
    $("#page_button").html("<div id='cancel' class='btn btn-primary btn-toggle-slide float-right'>cancel</div>");
  });

  $("#cancel").on('click', function(){
    $("#page_button").html("<div id='add_new' class='btn btn-primary btn-toggle-slide float-right'>add new goal</div>");
  });


  var goal_title = "";
  var launch_on;

  $("span#goal-title").text(goal_title);
  $("span#email-display").text(email);
  $(".inplace-edit").click(function() {
    $(".user-edit").toggle();
  });

  var firstname = "";
  var lastname = "";
  var email = "";
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

