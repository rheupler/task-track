// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var running = 0;
var time = 0;
var startButton = document.getElementById('start');
// var output = document.getElementById('output');

function start() {
  if (running == 0) {
    running = 1;
    increment();
  }
}

function pause() {
  running = 0;
}

function reset() {
  running = 0;
  time = 0;
  document.querySelector('#output').innerText = '00 : 00 : 00';
}

function increment() {
  if (running == 1) {
    setTimeout(function() {
      time++;
      var mins = Math.floor(time / 10 / 60);
      var secs = Math.floor(time / 10 % 60);
      var hours = Math.floor(time / 10 / 60 / 60);

      if (mins < 10) {
        mins = '0' + mins;
      }
      if (secs < 10) {
        secs = '0' + secs;
      }
      if (hours < 10) {
        hours = '0' + hours;
      }

      document.querySelector('#output').innerHTML = hours + ':' + mins + ':' + secs;
      increment();
    }, 100)
  }
}

function getSeconds() {
  var hms = $('#output');
  var a = hms.split(':')
  var seconds = (+a[0]) * 60 * 60 + (+a[1]) * 60 + (+a[2]);

  console.log(seconds);
}
