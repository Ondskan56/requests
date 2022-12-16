pipeline{
    agent any 
    stages{
        stage("cloning ..."){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Ondskan56/requests']]])
            }
        }
        stage("building ..."){
            steps{
                bat 'python -m pip install -r requirements.txt'
                bat 'python http_e.py'
            }
        }
        stage("testing ..."){
            steps{
                bat 'python -m pytest resttest.py'
            }
        }
    }
}
