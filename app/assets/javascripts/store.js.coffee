# http://emberjs.com/guides/models/using-the-store/

window.App = Ember.Application.create
	LOG_TRANSITIONS: true

# App.ApplicationAdapter = DS.FixtureAdapter.extend()

# App.Store = DS.Store.extend
# 	adapter: DS.FixtureAdapter

App.Store = DS.Store.extend(
  #adapter: 'DS.RESTAdapter',
  adapter: DS.FixtureAdapter.extend(queryFixtures: (fixtures, query, type) ->
    console.log query
    console.log type
    fixtures.filter (item) ->
      for prop of query
        return false  unless item[prop] is query[prop]
      true

  )
)