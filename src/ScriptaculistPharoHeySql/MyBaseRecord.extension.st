Extension { #name : #MyBaseRecord }

{ #category : #'*ScriptaculistPharoHeySql' }
MyBaseRecord >> save [
	self isDeleted
		ifTrue: [ self error: 'Cannot save a deleted record' ]
		ifFalse: [ self isPersisted
				ifTrue: [ self update ]
				ifFalse: [ self insert ] ].
	^ self
]
