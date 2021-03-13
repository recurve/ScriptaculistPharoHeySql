Class {
	#name : #MyBaseRecord,
	#superclass : #HeySql,
	#instVars : [
		'isDeleted'
	],
	#category : #ScriptaculistPharoHeySql
}

{ #category : #accessing }
MyBaseRecord >> isDeleted [
	isDeleted ifNil: [ isDeleted := false ]. 
	^ isDeleted. 
]

{ #category : #accessing }
MyBaseRecord >> isDeleted: anObject [
	isDeleted := anObject
]

{ #category : #accessing }
MyBaseRecord >> isNotDeleted [
	^ self isDeleted not. 
]

{ #category : #'*ScriptaculistPharoHeySql' }
MyBaseRecord >> save [
	self isDeleted
		ifTrue: [ self error: 'Cannot save a deleted record' ]
		ifFalse: [ self isPersisted
				ifTrue: [ self update ]
				ifFalse: [ self insert ] ].
	^ self
]
