pipeline{
    agent any 
      environment {
    PATH = "C:\Users\Alon Faifer\AppData\Local\Programs\Python\Python310"

    }
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
