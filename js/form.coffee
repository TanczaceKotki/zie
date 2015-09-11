$('#ad').validate
  success: (label) ->
    label.addClass('valid').text 'ok!'
  error: () ->
# do nothing, but register this function
  onsubmit: false
  rules: phone:
    required: true
    phonePL: true

$('body').on 'keyup', 'form', (e) ->
  if e.which == 13
    if $('#next').is(':visible') and $('fieldset.current').find('input, textarea').valid()
      e.preventDefault()
      nextSection()
      return false

$('#next').on 'click', (e) ->
  nextSection()

$('form').on 'submit', (e) ->
  if $('#next').is(':visible') or $('fieldset.current').index() < 4
    e.preventDefault()

goToSection = (i) ->
  $('fieldset:gt(' + i + ')').removeClass('current').addClass 'next'
  $('fieldset:lt(' + i + ')').removeClass 'current'
  $('li').eq(i).addClass('current').siblings().removeClass 'current'
  setTimeout (->
    $('fieldset').eq(i).removeClass('next').addClass 'current active'
    if $('fieldset.current').index() == 4
      $('#next').hide()
      $('input[type=submit]').show()
    else
      $('#next').show()
      $('input[type=submit]').hide()
  ), 80

nextSection = ->
  i = $('fieldset.current').index()
  if i < 4 and $('fieldset.current').find('input, textarea').valid()
    $('li').eq(i + 1).addClass 'active'
    goToSection i + 1

$('li').on 'click', (e) ->
  i = $(this).index()
  if $(this).hasClass('active')
    goToSection i

jQuery.validator.addMethod 'phonePL', ((phone_number, element) ->
  phone_number = phone_number.replace(/\s+/g, '')
  @optional(element) or phone_number.length > 9 and phone_number.match(/^([0-9]{9})|(([0-9]{3}-){2}[0-9]{3})|(\d\d\d \d\d\d \d\d\d)|(\(\d\d\)\d\d\d\d\d\d\d)$/)
), 'Proszê o podanie prawid³owego numeru telefonu'