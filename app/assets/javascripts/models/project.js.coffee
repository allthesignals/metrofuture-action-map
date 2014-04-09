# for more details see: http://emberjs.com/guides/models/defining-models/

App.Project = DS.Model.extend({
  name: DS.attr('string')
  description: DS.attr('string')
  status: DS.attr('string')
  geography: DS.attr('string')
  lead_dept: DS.attr('string')
  # geojson: DS.attr('object')
})
