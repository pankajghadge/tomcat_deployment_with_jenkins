Here is the scinario:
 - Java Application Developer provides WAR files like app1##20173010.war, app1##20173011.war
 - You can sync this files to your Jenkins server using rsync or you can give them direct access to jenkins workspace, it's your choice  
 - Make sure these war files owner is "jenkins" user or whatever user you are using to run the jenkins server
 - We are going to automate the deployment process to multiple tomcat server using Jenkins and Maven. Read below processes

 - Setup the jenkins Server, if you don't know then check on google
 - Install the Maven
 - install Filesystem List Parameter Plug-in in Jenkins
