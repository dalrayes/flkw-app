function initialize() {
      var mapCanvas = document.getElementById('map_1');
      var myLatLng = new google.maps.LatLng(29.307167010924164,47.97342447750104);
      var mapOptions = {
          center: myLatLng,
          zoom: 17,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          scrollwheel: false
      }
      var map = new google.maps.Map(mapCanvas, mapOptions)

      var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: "Fleur Yarmouk",
      });

      var infowindow = new google.maps.InfoWindow({ // Create a new InfoWindow
        content:"<h3>Fleur Flower's & Gifts</h3><p>Yarmouk <br>Block 2, St.2 <br> 99638855 <br> 25329414</p>"
      });

    google.maps.event.addListener(marker, 'click', function() { // Add a Click Listener to our marker
        infowindow.open(map,marker); // Open our InfoWindow
      });

//second location map
    var mapCanvas_2 = document.getElementById('map_2');
      var myLatLng_2 = new google.maps.LatLng(29.329188, 47.970076);
      var mapOptions_2 = {
          center: myLatLng_2,
          zoom: 17,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          scrollwheel: false
      }
      var map_2 = new google.maps.Map(mapCanvas_2, mapOptions_2)

      var marker_2 = new google.maps.Marker({
        position: myLatLng_2,
        map: map_2,
        title: "Fleur's Corner",
      });

      var infowindow_2 = new google.maps.InfoWindow({ // Create a new InfoWindow
        content:"<h3>Fleur's Corner</h3><p>Khaldiya <br>Blk 2, AlOrouba St <br> 97118668 <br> 24825970</p>"
      });

    google.maps.event.addListener(marker_2, 'click', function() { // Add a Click Listener to our marker
        infowindow_2.open(map_2,marker_2); // Open our InfoWindow
      });

    }
    google.maps.event.addDomListener(window, 'load', initialize);