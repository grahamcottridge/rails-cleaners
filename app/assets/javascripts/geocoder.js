// TODO: Put your JS code in here
// - create form -> DONE
// - On form submit
// - - fetch data
// - - - On getting data, write on document

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
