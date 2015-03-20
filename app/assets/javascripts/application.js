// app/assets/javascripts/application.js

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

// Add the following two lines

// Without this the normal root gets loaded. Somehow Angular is overiding. Probably with the RouteProvider
//=  require angular

// Without this the controller is not loaded. Maps Template and Controllers to URLs. Uses RouteProvider,
// Seems to be similar to stateProvider
//= require main

// Without this the contoller is not loaded. Loads the controller code
//= require_tree .
