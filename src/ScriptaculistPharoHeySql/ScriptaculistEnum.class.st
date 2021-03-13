Class {
	#name : #ScriptaculistEnum,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #ScriptaculistPharoHeySql
}

{ #category : #comparing }
ScriptaculistEnum >> = anEnum [
    ^ self class = anEnum class and: [ self value = anEnum value ]
]

{ #category : #comparing }
ScriptaculistEnum >> hash [
    ^ self class hash bitXor: self value hash
]

{ #category : #comparing }
ScriptaculistEnum >> printOn: aStream [
    super printOn: aStream.
    aStream << '(' << self value asString << ')'
]

{ #category : #accessing }
ScriptaculistEnum >> value [
	^ value
]

{ #category : #accessing }
ScriptaculistEnum >> value: anObject [
	value := anObject
]
