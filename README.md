# Quiz-Web-Application
Quiz-Application is an Application developed by using J2EE and Helpful to conduct the test online.

ABSTRACT-
An application designed for teacher and students to perform quiz where faculty have all the rights to develop new quiz or use saved quiz for future references.
This web-based application runs on JDK 8.0 and higher version of java and it uses J2EE (Java Enterprise Edition) technology.
The objective of this application is to replace the manual based quiz to software-based automata where data can be stored for longer period.
The functional requirements include teachers and students where teachers are required to register prior to login so that they can generate quiz with multiple choice questions, and they can access the results after completing the quiz. Whereas, students are only required to login with their username and password.
It supports cross platform as it can be run on various OS and browsers. It is easier to access as the changes made by teachers on the server side are easily available to the students. The Web-application based on MVC architecture where technologies used are JSP/Servlet, Model consists of Oracle 10g, View consist of HTML-5, CSS, JavaScript and JSP, Controller consists of servlet/JSP. Their various tools used to develop the application they are as below:
1.Netbeans IDE
2.ORACLE 10g
3.APACHE TOMCAT9.0(Server)

The main objective of  “ONLINE QUIZ APPLICATION” is to facilitate a user-friendly environment for all users and reduces the manual effort. In past days quiz is conducted manually but in further resolution of technology we can generate a web-application to conduct a quiz i.e. “ONLINE QUIZ APPLICATION” is online quiz application. In this application students of college access this application by their login credential and give test along with this faculty can also access this application by their login credential.
In “ONLINE QUIZ APPLICATION”, students give test online without any difficulty. First, students get register after then he/she can login in this application. When he/she enter his category, username, password then this login credential is checked in the database if the login credential is correct then he/she get the access right otherwise he/she cannot get access right.

Import quiz.dmp file in your system:

-------Export-------

Step1: exp
step2: UserName(e.g planetfood) password(e.g. planetfood)
step3: Enter BufferSize 4096
step4: Enter Name of Dump(dmp) file i.e abcd.dmp
step5: T
step6: Y
step7: Y
step8: Enter Tables Names one by one, and hit enter ::Import Successful

-------Import-------

>>conn Oracle_UserName/Oracle_Password
>>create user Create_User identify by Create_User_Password 
>>grant resource,connect to User_Name
>>conn Created_User_Name/Created_UserName_Password
>>select * from tab;

step1: imp
step2: Created_User_Name
step3: Created_User_Password
step4: abcd.dmp
step5: 30720
step6: no
step7: no
step8: yes
step9: yes
step10: yes

*Note:All this exp/imp commands are RUN on CMD 




