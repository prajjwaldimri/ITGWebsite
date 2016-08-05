$(function(){
  $('.menu .item')
  .tab({    
    history: true,
    historyType: 'hash'
  });

  $('.ui.form.article')
  .form({
    fields: {
      article_title     : 'empty',
      article_post_type   : 'empty',
      article_content : 'empty'}
  });

  $('.ui.form.assignment')
  .form({
    fields: {
      assignment_title     : 'empty',
      assignment_subject   : 'empty',
      assignment_semester : 'empty'}
  });
});
