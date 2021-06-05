$(document).ready(function() {
  $('#trigger-show-modal').click(function(event) {
    event.preventDefault();
    $('#modal-user-show').modal('show');
    $('#close-modal-user').modal('hide');
  })
});