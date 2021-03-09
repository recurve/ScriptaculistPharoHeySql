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
				package: 'ScriptaculistPharoHeySql';
				package: 'ScriptaculistPharoHeySql-Models';
				package: 'ScriptaculistPharoHeySql-Tests'].
]

{ #category : #baselines }
BaselineOfScriptaculistPharoHeySql >> heysql: spec [
	spec 
		baseline: 'heysql'	
		with: [ spec repository: 'github://recurve/heysql' ].
]

{ #category : #baselines }
BaselineOfScriptaculistPharoHeySql >> seaside: spec [
	spec 
		baseline: 'Seaside3'	
		with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].
]
