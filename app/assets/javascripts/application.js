//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require bootstrap-datepicker/locales/bootstrap-datepicker.fr.js
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require_tree .
//= require underscore
//= require gmaps/google
//= require barunka/bootstrap.min.js
//= require barunka/jquery.cookie.js
//= require barunka/lightbox.min.js
//= require barunka/front.js

$(document).ready(function(){
  $('.datepicker').datepicker({format: "yyyy-mm-dd"});
});
