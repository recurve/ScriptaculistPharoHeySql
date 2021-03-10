Class {
	#name : #MyAddressBookSetup,
	#superclass : #Object,
	#classVars : [
		'dbConnectUrl'
	],
	#category : #ScriptaculistPharoHeySql
}

{ #category : #initialization }
MyAddressBookSetup class >> generatePackageMigration [
self setupDatabaseFields. 
HeySqlDbMigrator new: MyAddressBookMigrations.
HeySqlDbMigrator createMigrationPackage: 'ScriptaculistPharoHeySql-Models'.

]

{ #category : #initialization }
MyAddressBookSetup class >> init [
	self init: dbConnectUrl. 
]

{ #category : #initialization }
MyAddressBookSetup class >> init: newDbConnectUrl [
	newDbConnectUrl ifNil: [Exception signal: 'Must provide a Postgress Db Connect url'].
	WAAdmin register: MyAddressBookView asApplicationAt: 'AddressBook'.
	dbConnectUrl := newDbConnectUrl.
	HeySql init: dbConnectUrl.
	self setupDatabaseFields. 
	self setupMethodGeneration. 
	HeySqlDbMigrator new: MyAddressBookMigrations.
	HeySqlDbMigrator migrate.

"Use something like this url to access your app in development: http://localhost:8080/seaside/AddressBook"
"The migrations allow all developers to keep their SQL schemas in sync without thinking about it, same for production deployment."
]

{ #category : #initialization }
MyAddressBookSetup class >> setupDatabaseFields [
	MyAddressBook dbFields: 'displayName'.
	MyContact dbFields: 'addressBookId firstName surname dateOfBirth telephoneNumber emailAddress'. 
]

{ #category : #initialization }
MyAddressBookSetup class >> setupMethodGeneration [
	MyContact createFetchMethods. 
	MyAddressBook createFetchMethods. 
]
