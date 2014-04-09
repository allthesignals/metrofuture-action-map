# For more information see: http://emberjs.com/guides/routing/

App.ResultsRoute = Ember.Route.extend
	model: (params) -> 
		console.log(@geographyChoice)
		@store.find 'project',
			geography: @geographyChoice



	# # this works
	# @store.filter 'project', (project)->
	# 	project.get('geography') == "Inner Core"
