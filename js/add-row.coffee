$(document).ready ->
  i = 1
  $('#add_row').click ->
    $('#addr' + i).html '<td>' + (i + 1) + '</td><td><input name=\'name' + i + '\' type=\'text\' placeholder=\'Name\' class=\'form-control input-md\'  /> </td><td><input  name=\'mail' + i + '\' type=\'text\' placeholder=\'Mail\'  class=\'form-control input-md\'></td><td><input  name=\'mobile' + i + '\' type=\'text\' placeholder=\'Mobile\'  class=\'form-control input-md\'></td>'
    $('#tab_logic').append '<tr id="addr' + (i + 1) + '"></tr>'
    i++
  $('#delete_row').click ->
    if i > 1
      $('#addr' + (i - 1)).html ''
      i--