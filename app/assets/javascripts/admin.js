// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require admin_lte/JQuery/jQuery-2.1.4.min
//= require jquery_ujs
//= require turbolinks
//= require admin_lte.js

// require_tree .
// add index.js from vendor/assets/javascripts folder

// require authorize_it/init

$(document).ready(function() {
    $('#new_user').validator();
});


