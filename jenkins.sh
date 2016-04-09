export JENKINS_HOME="`pwd`/.jenkins"

if [ ! -f jenkins.war ]; then
  wget "http://mirror.xmission.com/jenkins/war-stable/latest/jenkins.war"
fi

mkdir -p $JENKINS_HOME

if [ -f .jenkins]; then
  cd .jenkins
  git pull
  cd ..
else
  git clone https://github.com/dmullins78/jenkins-scm $JENKINS_HOME
fi

./plugins.sh plugins.txt

java -jar jenkins.war
