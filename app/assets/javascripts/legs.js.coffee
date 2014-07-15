$ ->
  map = document.getElementById("multi_markers")
  if (map)
    handler = Gmaps.build("Google")
    handler.buildMap
      internal:
        id: "multi_markers"
    , ->
      markerArray = []
      addMarker = (leg) ->
        markerArray.push
          lat: leg.latitude
          lng: leg.longitude
      _.each gon.legs, addMarker
      markers = handler.addMarkers(markerArray)
      handler.bounds.extendWith markers
      handler.fitMapToBounds()
