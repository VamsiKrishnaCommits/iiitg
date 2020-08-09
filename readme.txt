A) How to install the system 

*  Step - 1:
Download XAMPP - https://www.apachefriends.org/download.html
Install xampp , set the mysql password as 'iiitg' (you can use any password , makes sure you change the password from 'iiitg' to your new password in need.php file present in the folder sent to you)

* Step -2:
Go to the installed directory , let it be xamp for instance.
navigate t0 xamp/htdocs.

* Step - 3 :
Download  the folder from github link sent to you and place it in  htdocs folder present in xamp you just created. 

* Step-4:
Run xampp . Press start button for both apache and my sql modules.

* Step -5 :
open your web browser , open the link    http://localhost/phpmyadmin

* Step-6:
Click on new > import , find the file import.sql in the github file downloaded , and import it.

* Step - 7 :
open the link   http://localhost/iiitg/auth.php

 Login as admin with username- admin    password- iiitg@123

 Admin can add accounts manually in phpmyadmin , in the authentication table, which is under studentinfo data base.
The passwords are SHA1 hashed.

B)The table definitions

Table definitions are the same as given in the document given by you. All the tables along with the definitions are automatically loaded in the php my admin console .

C)Screens

There are 3 types of consoles 
1) Admin
2)Staff
3)Student

Admin has all the privileges , admin can upload bank records , mess dues etc.
Staff has restricted priviliges.
 
On logging in everything becomes apparent.

D) Upload features
Admin can bulk upload bank records, mess dues , student grades and all of them update the tables mentioned in the 
document given by you.
On logging in , admin can find the tabs to perform the actions. The file format for each upload is clearly given in the      tabs.

 




