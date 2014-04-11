# # For more information see: http://emberjs.com/guides/routing/

App.ProjectsRoute = Ember.Route.extend
	model: (params) -> 
			@store.find 'project',
				params.queryParams

