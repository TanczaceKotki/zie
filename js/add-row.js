// Generated by CoffeeScript 1.10.0
(function() {
  $(document).ready(function() {
    var i;
    i = 1;
    $('#add_row').click(function() {
      $('#addr' + i).html('<td>' + (i + 1) + '</td><td><input name=\'name' + i + '\' type=\'text\' placeholder=\'Name\' class=\'form-control input-md\'  /> </td><td><input  name=\'mail' + i + '\' type=\'text\' placeholder=\'Mail\'  class=\'form-control input-md\'></td><td><input  name=\'mobile' + i + '\' type=\'text\' placeholder=\'Mobile\'  class=\'form-control input-md\'></td>');
      $('#tab_logic').append('<tr id="addr' + (i + 1) + '"></tr>');
      return i++;
    });
    return $('#delete_row').click(function() {
      if (i > 1) {
        $('#addr' + (i - 1)).html('');
        return i--;
      }
    });
  });

}).call(this);

//# sourceMappingURL=add-row.js.map