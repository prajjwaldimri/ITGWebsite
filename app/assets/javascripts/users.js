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

  $('#submit-assignment-button').click(function(){
    $('.ui.menu.top').find('.item').tab('change tab', 'submit_assignment')
  });

  $('#submit-article-button').click(function(){
    $('.ui.menu.top').find('.item').tab('change tab', 'submit_article')
  });
});
