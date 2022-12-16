pipeline{
    agent any 
    stages{
        stage("cloning ..."){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/devopsPRO27/requests']]])
            }
        }
        stage("building ..."){
            steps{
                bat 'pip install -r requirements.txt'
                bat 'python http_e.py'
            }
        }
        stage("testing ..."){
            steps{
                bat 'pytest resttest.py'
            }
        }
    }
}
