# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# TODO:  [WIP] implement AJAX modification of forms and task checkbox edits
# When the page is ready:
$(->

  $('.complete_task').click ->
    checkbox = $(this)
    task_id = checkbox.val()
    puts "task_id: " + task_id
    $.ajax
      url: $(this).data('href')
      type: 'PUT'
      dataType: 'html'
      data:
        is_complete: true

  $('.task-circle').hover ->
    target_id = $(this).attr('data-id')
    $('.milestonetasks').addClass('hidden')
    $("[class*=#{target_id}]").removeClass('hidden')

  $ ->
    $('input[type="checkbox"].task_complete').change (e) ->
      checkbox = $(this)
      task_id = checkbox.val()
      task_state = checkbox.getAttribute('checked')
      $.ajax
        url: $(this).data('href')
        method: 'POST'
        dataType: 'json'
        data:
          is_complete: task_state

)

window.onbeforeunload = (e) ->
