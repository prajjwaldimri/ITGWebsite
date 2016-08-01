// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function(){
  $('.ui.form.login')
  .form({
    fields: {
      session_rollno     : 'empty',
      session_password   : 'empty'}
  });
});
