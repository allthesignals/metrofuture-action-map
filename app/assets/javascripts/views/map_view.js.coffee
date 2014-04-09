# for more details see: http://emberjs.com/guides/views/

App.MarkerLayer = EmberLeaflet.MarkerLayer.extend(EmberLeaflet.DraggableMixin, EmberLeaflet.PopupMixin,
  popupContentBinding: "content.title"
)

App.MarkerCollectionLayer = EmberLeaflet.MarkerCollectionLayer.extend(
  content: [
    location: L.latLng(42.3455, -71.1505)
    title: "Place"
  ]
  itemLayerClass: App.MarkerLayer
)

App.MapView = EmberLeaflet.MapView.extend(
	center: L.latLng(42.3455, -71.1505),
	zoom: 18,
	options: 
		maxZoom: 19, 
		minZoom: 0
	childLayers: [
	  EmberLeaflet.DefaultTileLayer
	  App.MarkerCollectionLayer
])

# App.MapView = Ember.View.extend(
#   cartoDbUser: "cspanring"
#   cartoDbSql: "SELECT * FROM cambridge_neighborhoods"
#   cartoDbCartoCss: "#cambridge_neighborhoods {     polygon-fill: yellow;     polygon-opacity: 0.2;     line-width: 2;     line-color: yellow;     line-opacity: 1;   }"
#   didInsertElement: ->
#     view = this
#     map = L.map(@$("#map").get(0)).setView([
#       42.373611
#       -71.110556
#     ], 12)
#     L.tileLayer("http://{s}.tile.stamen.com/toner-background/{z}/{x}/{y}.png",
#       attribution: "Map tiles by <a href=\"http://stamen.com\">Stamen Design</a>, <a href=\"http://creativecommons.org/licenses/by/3.0\">CC BY 3.0</a> &mdash; Map data &copy; <a href=\"http://openstreetmap.org\">OpenStreetMap</a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA</a>"
#       subdomains: "abcd"
#       minZoom: 0
#       maxZoom: 20
#     ).addTo map
#     cartodb.Tiles.getTiles
#       user_name: view.get("cartoDbUser")
#       sublayers: [
#         sql: view.get("cartoDbSql")
#         cartocss: view.get("cartoDbCartoCss")
#       ]
#     , (tiles, err) ->
#       return  if tiles is null
#       L.tileLayer(tiles.tiles[0],
#         attribution: "City of Cambridge, MA"
#         minZoom: 9
#         maxZoom: 12
#       ).addTo map
#       return

#     return
# )