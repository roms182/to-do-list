function set_position() {
    $('#todolist-body ul').each(function(index){
      $(this).attr("data-task-order", index + 1);
      $(this).children('li:first').text(index + 1);
    });
  };


$( function() {
// ADD TASK LINK
    set_position();
    $("#add-task-link").click(function(){
      $("#new-task-form").slideToggle(500);
    });
// JQUERY SORTABLE
    $( "#todolist-body" ).sortable({
      cursor: "move",
      update: function(e, ui ){
        set_position();
        var updated_order = [];
        $('#todolist-body ul').each(function(index) {
            updated_order.push({ id: $(this).data("task-id"), position: index + 1 });
        });
        // Ajax command to send data to DB
        $.ajax({
          method: "PUT",
          url: "tasks/sort",
          data: {order: updated_order}
        });
      },
    });
    $( "#todolist-body" ).disableSelection();
});




