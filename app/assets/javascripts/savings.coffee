# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click touchend', (e) ->
  $('#plus').click ->
    savings = document.getElementById('amount').value
    $('.savings-wrap p#now-value').text String(savings).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, '$1,') + ' yen'
    false
  return
