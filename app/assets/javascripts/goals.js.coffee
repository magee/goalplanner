# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# TODO:  [WIP] implement AJAX modification of forms and task checkbox edits
$("textarea").live "blur", -> $(this).parents("form").submit()
$("text_field").live "blur", -> $(this).parents("form").submit()

# Show spinner while saving:
toggleSpinner = -> $("#spinner").toggle()

# When the page is ready:
$(->
  $("form[data-remote]")
    .bind('ajax:before', toggleSpinner)
    .bind('ajax:complete', toggleSpinner)
    .bind('ajax:success', (event, data, status, xhr) ->
      $("#response").html("Saved!").show().fadeOut("slow")
    )
    .bind('ajax:error', (xhr, status, error) -> )

  $("li[data-remote-on-hover]")
    .hover( ->
      alert("test")
    )

  $ ->
    $('input[type="checkbox"].task_complete').change (e) ->
      checkbox = $(this)
      task_id = checkbox.val()
      task_state = checkbox.getAttribute('checked')
      $.ajax
        url: '/task/#{task_id}/edit'
        method: 'POST'
        dataType: 'json'
        data:
          is_complete: task_state

)

window.onbeforeunload = (e) ->
