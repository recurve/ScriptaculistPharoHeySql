Class {
	#name : #MyAddressBookSetup,
	#superclass : #Object,
	#category : #ScriptaculistPharoHeySql
}

{ #category : #initialization }
MyAddressBookSetup class >> init: dbConnectUrl [
WAAdmin register: MyAddressBookView asApplicationAt: 'AddressBook'.

"Use something like this url to access your app in development: http://localhost:8080/seaside/AddressBook"
]
