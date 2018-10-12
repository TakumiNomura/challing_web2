# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click touchend', (e) ->
  $('.signup .button, .signin .button').click ->
    if $(this).find('a').attr('target') == '_blank'
      window.open $(this).find('a').attr('href'), '_blank'
    else
      window.location = $(this).find('a').attr('href')
    false

  ### Sign Inをクリックした時に表示・別の場所をクリックすると非表示 ###

  if !$(e.target).closest('.signin').length and !$(e.target).closest('#buttonR').length
    $('.signin').fadeOut()
  else if $(e.target).closest('#buttonR').length
    if $('.signin').is(':hidden')
      $('.signin').fadeIn()
      $('#overlay').fadeIn()
    else
      $('.signin').fadeOut()

  ### Sign Upをクリックした時に表示・別の場所をクリックすると非表示 ###

  if !$(e.target).closest('.signup').length and !$(e.target).closest('#buttonL').length
    $('.signup').fadeOut()
  else if $(e.target).closest('#buttonL').length
    if $('.signup').is(':hidden')
      $('.signup').fadeIn()
      $('#overlay').fadeIn()
    else
      $('.signup').fadeOut()
  $('#overlay').unbind().click ->
    $('#overlay').fadeOut()
    return
  return