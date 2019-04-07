
<html>
<head>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="../lib/Fluster2.packed.js"></script>
<script type="text/javascript">
	
// OnLoad function ...
function initialize() {
  	
	// Create a new map with some default settings
    var myLatlng = new google.maps.LatLng(25,25);
    var myOptions = {
      zoom: 3,
      center: myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	
	// Initialize Fluster and give it a existing map
	var fluster = new Fluster2(map);
	
	for(var i = 0; i < 200; i++)
	{
		var pos = [
			50 * Math.random(),
			50 * Math.random()
		];
		
		// Create a new marker. Don't add it to the map!
		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(pos[0], pos[1]),
			title: 'Marker ' + i
		});
		
		// Add the marker to the Fluster
		fluster.addMarker(marker);
	}
	
	// Set styles
	// These are the same styles as default, assignment is only for demonstration ...
	fluster.styles = {
		// This style will be used for clusters with more than 0 markers
		0: {
			image: 'http://gmaps-utility-library.googlecode.com/svn/trunk/markerclusterer/1.0/images/m1.png',
			textColor: '#FFFFFF',
			width: 53,
			height: 52
		},
		// This style will be used for clusters with more than 10 markers
		10: {
			image: 'http://gmaps-utility-library.googlecode.com/svn/trunk/markerclusterer/1.0/images/m2.png',
			textColor: '#FFFFFF',
			width: 56,
			height: 55
		},
		20: {
			image: 'http://gmaps-utility-library.googlecode.com/svn/trunk/markerclusterer/1.0/images/m3.png',
			textColor: '#FFFFFF',
			width: 66,
			height: 65
		}
	};
	

	fluster.initialize();
	
}

</script>

</head>
<body onload="initialize()">
<div id="map_canvas" style="width: 600px; height: 400px"></div>
</body>
</html>
	
	
Banking<br> portlet in View mode.

</body>

</html>

