# for more details see: http://emberjs.com/guides/models/defining-models/

App.Project = DS.Model.extend
	title: DS.attr('string')
	# description: DS.attr('string')
	status: DS.attr('string')
	# lead_dept: DS.attr('string')
