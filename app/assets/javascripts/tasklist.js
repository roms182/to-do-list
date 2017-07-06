function set_position() {
    $('#todolist-body ul').each(function(index){
      $(this).attr("data-task-order", index + 1);
      $(this).children('li:first').text(index + 1);
    });
  };

// DRAG & DROP FOR BLUE BOXES
$( function() {

  $(".task").draggable({
    cursor: "move",
    containment : '.agenda-fond',
    grid: [0, 40],
    revert: 'invalid'
  });
  $(".agenda-fond li").droppable({
    accept: '.task',
    drop: function(event, ui){
      var updated_timer = { id: ui.draggable.attr('id'), timer: $(this).data('timer') };
      var title = ui.draggable.text();
      alert($(this).attr("id"));
      //$("<%= j render partial: 'taskbox', locals: {task: @task} %>").hide().appendTo(this div.buttin).fadeIn()
      $.ajax({
        method: "PUT",
        url: "tasks/timer",
        data: { timer: updated_timer }
      })
    }
  });


// ADD TASK LINK
    set_position();
    jQuery("#add-task-link").click(function(){
      jQuery("#new-task-form").slideToggle(500);
    });
// JQUERY SORTABLE
    jQuery( "#todolist-body" ).sortable({
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
          data: { order: updated_order }
        });
      },
    });
    $( "#todolist-body" ).disableSelection();
// Draggable
});






