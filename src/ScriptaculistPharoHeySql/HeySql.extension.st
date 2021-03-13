Extension { #name : #HeySql }

{ #category : #'*ScriptaculistPharoHeySql' }
HeySql >> asOrderedCollection [ 
	^ OrderedCollection with: self. 
]

{ #category : #'*ScriptaculistPharoHeySql' }
HeySql >> isNotPersisted [ 
^self isPersisted not. 
	  
]

{ #category : #'*ScriptaculistPharoHeySql' }
HeySql >> isPersisted [ 
^id isNotNil. 
	  
]
