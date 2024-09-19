pipeline {
    agent any

    tools {
        // Definir la versión de Maven a utilizar en el pipeline
        maven 'Maven_3_9_9' // Debes asegurarte de que esta versión de Maven está configurada en Jenkins
        jdk 'JAVA_17' // Asegúrate de que la versión de JDK está configurada
    }

    stages {
        stage('Deploy DEV') {
            steps {
                // Aquí puedes agregar pasos para desplegar tu aplicación en un servidor, contenedor, etc.
                echo 'Deploying to the DEVELOPMENT server...'
            }
        }
        stage('Deploy QA') {
                    steps {
                        // Aquí puedes agregar pasos para desplegar tu aplicación en un servidor, contenedor, etc.
                        echo 'Deploying to the TESTING server...'
                    }
                }

        stage('Checkout') {
            steps {
                // Realiza la descarga del código fuente desde GitHub u otro repositorio
                git branch: 'main', url: 'https://github.com/mpuertao/demo-sofka-karate.git'
            }
        }

        stage('Build') {
            steps {
                // Compila el proyecto Maven
                sh 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                // Ejecuta las pruebas del proyecto
                sh 'mvn test'
            }
        }


        stage('Deploy PDN') {
            steps {
                // Aquí puedes agregar pasos para desplegar tu aplicación en un servidor, contenedor, etc.
                echo 'Deploying to the production server...'
            }
        }
    }

    post {
        always {
            // Limpieza del workspace al final del pipeline
            cleanWs()
        }
        success {
            // Enviar notificación o mensaje de éxito
            echo 'Build successful!'
        }
        failure {
            // Enviar notificación o mensaje de fallo
            echo 'Build failed!'
        }
    }
}
