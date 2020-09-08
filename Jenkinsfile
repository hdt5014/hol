pipeline {
    agent any
     triggers {
         cron('H/1 * * * *')
     }
    tools {
        maven 'M2_HOME'
    }



    stages {
        
        stage('build') {
            steps {
                echo 'Hello build'
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
            }
        }
        stage('test') {
            steps {
                sh 'mvn test'
                
            }
        }
        stage ('build and publish image') {
      steps {
        script {
          checkout scm
          docker.withRegistry('', 'DockerRegistryID') {
          def customImage = docker.build("hdt5014/hol-pipeline:${env.BUILD_ID}")
          def customImage1 = docker.build("hdt5014/hol-pipeline")
          customImage.push()
          customImage1.push()
          }
    }

    }
}
  }
}
