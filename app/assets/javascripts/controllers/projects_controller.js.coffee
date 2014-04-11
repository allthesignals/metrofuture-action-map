# for more details see: http://emberjs.com/guides/controllers/

App.ProjectsController = Ember.ArrayController.extend
	needs: ['application']
	content: []
	sortProperties: ['title'],
	sortAscending: true
	projectsCount: Ember.computed.alias('length')
	results: (->
		this.get('content')?.filterProperty('status', 'con')
	).property('content.@each.type')
