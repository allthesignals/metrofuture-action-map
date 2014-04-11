# for more details see: http://emberjs.com/guides/controllers/
console.log(App.gon.subRegions)

App.ProjectsController = Ember.ArrayController.extend
	queryParams: ['geography', 'leadDept', 'status']

	status: App.seeds.status
	geography: App.seeds.geography
	leadDept: App.seeds.leadDept

	actions:
		submitParameters: (statusChoice, geographyChoice, leadDeptChoice) ->

			@transitionToRoute 'projects'

			# @store.find 'project', 
			# 	geography: @geographyChoice

			
