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

{ #category : #'*ScriptaculistPharoHeySql' }
HeySql >> save [ 
self isPersisted ifTrue: [ self update ] ifFalse: [ self insert ].
^self. 
	  
]
