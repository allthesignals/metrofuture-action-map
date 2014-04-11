# http://emberjs.com/guides/models/using-the-store/

window.App = Ember.Application.create
	LOG_TRANSITIONS: true

# App.ApplicationAdapter = DS.FixtureAdapter.extend()

# App.Store = DS.Store.extend(
# 	adapter: DS.FixtureAdapter
# )

App.Store = DS.Store.extend
  revision: 12,
  adapter: DS.RESTAdapter.extend
    host: 'http://localhost:3001'