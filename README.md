# ScriptaculistPharoHeySql
Contact List web application that you can use in your web browser. It is served by Smalltalk (Pharo) and persisted to Postgres with ORM HeySql. Uses Scriptaculous for eye candy. 

### SQL setup

You will need to prep your Postgres SQL database with user, password, and db. Here's an example:

```sql
psql postgres
CREATE ROLE mycontacts LOGIN CREATEDB  PASSWORD 'mycontacts_pw' ;
CREATE DATABASE mycontacts_db OWNER mycontacts;
quit;
```

### Code loading

Load code like this. Will load all dependencies as well such as Seaside, HeySql, P3, etc.

```smalltalk
Metacello new
baseline: 'ScriptaculistPharoHeySql';
repository: 'github://recurve/ScriptaculistPharoHeySql:main/repository';
load.
```

### Initialization

Open up a playground in Pharo and run this:

```smalltalk
MyAddressBookSetup init: 'psql://mycontacts:mycontacts_pw@localhost/mycontacts_db'.
```

### Launch your web browser

This is an Address Book where you can add contacts and save to the local database. Use Chrome, Firefox, Safari or your favorite web browser by going to this url: http://localhost:8080/AddressBook

### Special Thanks

Petter Egesund - for creating a new way to persist to SQL with Smalltalk called HeySql. For all of Smalltalk's strength, SQL is traditionally its weakness. Most of us prefer to use Object Databases with Smalltalk. Petter crafted an elegant solution that leverages the best features of Smalltalk to make SQL access, shall I say, fun? Yeah, I had a good time. There simply are some times that you need to talk to SQL so give HeySql a try in this AddressBook app. Learn more about HeySql here: https://github.com/pegesund/heysql

Alan (Objcentric) - he created a nice 7 part AddressBook app with Seaside that is easy to follow and packed with information. I simply decided to mate it with a SQL back end for persistence. If you are new to Smalltalk / Seaside it's worth going through his tutorial and referring to the sample code here to see a few differences in approach. By and large, Alan gave a good blueprint to evaluate Smalltalk in a concise easy to read way. Here's part 1: https://objectcentric.wordpress.com/2007/01/18/scriptacu-list-tutorialpart-2/

Avi Bryant - for daring to put WebObjects behind, learn Squeak, and gift us Seaside for web development. 

Disney, Squeak, and Pharo teams for pushing the envelope of what Smalltalk can be in the same way that Linux / FreeBSD opened the world to Unix in an open and welcoming way. 

### Looking forward

It might be good to fork this AddressBook app then recreate it with different back ends such as GLORP (another SQL option), Voyage (Mongo DB document store), GOODS / Magma / GemStone (Object Databases). That way we can compare how they behave, what it feels like to use them, and maybe develop some best practices. 

## License and usage

This is MIT-license, use it as you would like.
