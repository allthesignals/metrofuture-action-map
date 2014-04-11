# for more details see: http://emberjs.com/guides/controllers/

App.ApplicationController = Ember.ArrayController.extend

	status: ['con', 'com']
	geography: ['munis','subregions']
	leadDept: ['data services', 'transportation']

	actions: 
		submitParameters: (statusChoice, geographyChoice, leadDeptChoice) ->
			console.log("Action Fired!")
			console.log("status choice is: ", statusChoice)
			@transitionToRoute "index"
			@transitionToRoute "/projects?by_status=#{statusChoice}"

