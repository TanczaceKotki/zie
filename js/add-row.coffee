$(document).ready ->
  i = 1
  $('#add_row').click ->
    $('#addr' + i).html '<td>' + (i + 1) + '</td><td><input name=\'all_seats' + i + '\' type=\'number\' min=\'0\' class=\'form-control input-md\'  /> </td><td><input  name=\'free_seats' + i + '\' type=\'number\' min=\'0\' class=\'form-control input-md\'></td>'
    $('#tab_logic').append '<tr id="addr' + (i + 1) + '"></tr>'
    i++
  $('#delete_row').click ->
    if i > 1
      $('#addr' + (i - 1)).html ''
      i--