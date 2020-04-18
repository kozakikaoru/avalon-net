// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("materialize-css/dist/js/materialize")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

//= require materialize

document.addEventListener('turbolinks:load', function() {
  var elems = document.querySelectorAll('select');
  const options = {};
  var instances = M.FormSelect.init(elems, options);
});

document.addEventListener('turbolinks:load', function() {
  var elems = document.querySelectorAll('.datepicker');
  const options = {
    i18n: {
      months: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
      monthsShort: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
      weekdays: ['日曜日','月曜日','火曜日','水曜日','木曜日','金曜日','土曜日'],
      weekdaysShort: ['日曜日','月曜日','火曜日','水曜日','木曜日','金曜日','土曜日'],
      weekdaysAbbrev: ['日','月','火','水','木','金','土']
    },
    format: 'yyyy-mm-dd'
  };
  var instances = M.Datepicker.init(elems, options);
});

document.addEventListener('turbolinks:load', function() {
  var elems = document.querySelectorAll('.timepicker');
  const options = {
    twelveHour: false
  };
  var instances = M.Timepicker.init(elems, options);
});
