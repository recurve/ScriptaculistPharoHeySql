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
HeySql >> resetFromMemento: aMemento [
| variableNames |
variableNames := self class instVarNames. 
variableNames do: [ :v | 
	self perform: (v , ':') with: (aMemento perform: v)
].

]
