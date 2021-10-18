pipeline {
    agent any

    stages {
        stage('Validate') {
            steps {
                echo 'Code Validation..'
		sh 'mvn validate'
            }
        }
        stage('UnitTest') {
            steps {
                echo 'Unit Testing..'
		sh 'mvn test'
            }
        }
        stage('SonarAnalysis') {
            steps {
                echo 'Analysis On Bugs....'
		sh 'mvn sonar:sonar -Dsonar.host.url=http://13.233.117.16:9000 -Dsonar.login=a1198acb9c05e0e5761a3ff53f6f4c74a431635f'
            }
        }
	stage('publish') {
            steps {
                echo 'publising....'
		sh 'mvn deploy'
            }
        }
	stage('Deploying') {
            steps {
                echo 'Deploying to tomcat....'
		sh 'wget --user admin --password admin123 http://13.233.117.16:8081/nexus/service/local/repositories/releases/content/com/web/cal/WebAppCal/1.2.8/WebAppCal-1.2.8.war'
		sh 'sudo cp *.war /opt/apache-tomcat-7.0.94/webapps'    
            }
        }
    }
}
