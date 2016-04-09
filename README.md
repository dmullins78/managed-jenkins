# Versioned Jenkins Bootstrap

This project should let you install locally a managed, versioned, installation of jenkins. 

Including:

* Plugins are managed by the plugins.txt
* Jobs/configuration are managed by the [scm](https://wiki.jenkins-ci.org/display/JENKINS/SCM+Sync+configuration+plugin) plugin

To Use:

* After cloning the repo
* `chmod +x jenkins.sh`
* `chmod +x plugins.sh`
* `./plugins.sh`

This will pull down the latest jekins war, manually install the plugins defined in the plugins.txt, pull in the latest versioned jobs and configuration from source control and start the server.


