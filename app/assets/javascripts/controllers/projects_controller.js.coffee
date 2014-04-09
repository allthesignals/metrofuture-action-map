# for more details see: http://emberjs.com/guides/controllers/
console.log(App.gon.subRegions)

App.ProjectsController = Ember.ArrayController.extend
	queryParams: ['geography', 'leadDept', 'status']

	status: App.gon.status
	geography: App.gon.geography
	leadDept: App.gon.leadDept

	actions:
		submitParameters: (statusChoice, geographyChoice, leadDeptChoice) ->

			@transitionToRoute 'projects', 
				geographyChoice

			# @store.find 'project', 
			# 	geography: @geographyChoice

			
