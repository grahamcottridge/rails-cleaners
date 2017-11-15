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

 $(document).ready(function(){
    $('.datepicker').datepicker({format: "yyyy-mm-dd"});
  });

function initMap(lat, lng, zoom) {
  const position = { lat: lat, lng: lng };
  const map = new google.maps.Map(document.getElementById('map'), {
    zoom: zoom,
    center: position
  });
  let marker = new google.maps.Marker({
    position: position,
    map: map
  });
}

initMap (48.8648482, 2.3798534, 14);

function getCoodinates() {
  event.preventDefault();
  const coord = {};
  const address = document.getElementById("address").value;
  fetch(`https://maps.googleapis.com/maps/api/geocode/json?address=${address}&key=AIzaSyC5mgeHb--3BkcMSgj_4ftQ3Twe3SMGLAk`)
  .then(response => response.json())
  .then((data) => {
    coord.latitude = data.results[0].geometry.location.lat;
    coord.longitude = data.results[0].geometry.location.lng;
    const showCoordinate = document.getElementById("coordinates");
    showCoordinate.innerHTML = `Latitude: ${coord.latitude}, Longitude: ${coord.longitude}`;
    initMap(coord.latitude, coord.longitude, 18);
  });
}
