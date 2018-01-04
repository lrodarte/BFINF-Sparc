//= require active_admin/base
//= require ckeditor/init
//= require ckeditor/config


  $(document).ready(function(){
    $('form[data-remote]').bind('ajax:before', function(){
      for (instance in CKEDITOR.instances){
        CKEDITOR.instances[instance].updateElement();
      }
    });
  });