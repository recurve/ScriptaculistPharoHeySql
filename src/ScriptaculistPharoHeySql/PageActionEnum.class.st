Class {
	#name : #PageActionEnum,
	#superclass : #ScriptaculistEnum,
	#category : #ScriptaculistPharoHeySql
}

{ #category : #actions }
PageActionEnum class >> cancel [
^ self new value: #cancel
]

{ #category : #actions }
PageActionEnum class >> delete [
^ self new value: #delete
]

{ #category : #actions }
PageActionEnum class >> save [
^ self new value: #save
]

{ #category : #testing }
PageActionEnum >> isCancel [
	^self = self class cancel.
]

{ #category : #testing }
PageActionEnum >> isDelete [
	^self = self class delete.
]

{ #category : #testing }
PageActionEnum >> isSave [
	^self = self class save.
]
