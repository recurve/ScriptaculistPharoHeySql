Class {
	#name : #BaselineOfScriptaculistPharoHeySql,
	#superclass : #BaselineOf,
	#category : #BaselineOfScriptaculistPharoHeySql
}

{ #category : #baselines }
BaselineOfScriptaculistPharoHeySql >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Dependencies"
			self seaside: spec.
			self heysql: spec.

			"Packages"
			spec
				package: 'ScriptaculistPharoHeySql' with: [ spec requires: #('Seaside3' 'HeySql') ];
				package: 'ScriptaculistPharoHeySql-Models' with: [ spec requires: #('HeySql') ];
				package: 'ScriptaculistPharoHeySql-Tests' with: [ spec requires: #('HeySql') ]
		].
]

{ #category : #baselines }
BaselineOfScriptaculistPharoHeySql >> heysql: spec [
	spec 
		baseline: 'HeySql'	
		with: [ spec repository: 'github://recurve/heysql' ].
]

{ #category : #baselines }
BaselineOfScriptaculistPharoHeySql >> seaside: spec [
	spec 
		baseline: 'Seaside3'	
		with: [ 
			spec 
			loads: #('Scriptaculous-Components' 'Development' 'Zinc'); 
			repository: 'github://SeasideSt/Seaside:master/repository'
		].

"Found definitive info on loading scriptaculous, which also loads prototype, at the following link:"
"https://github.com/SeasideSt/Seaside/blob/master/repository/BaselineOfSeaside3.package/BaselineOfSeaside3.class/instance/baselinescriptaculous..st"
]
