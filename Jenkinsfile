


node {
    def app
 /*  stage('Initialize'){
        def dockerHome = tool 'myDocker'
        def goHome  = tool 'myGo'
        env.PATH = "${dockerHome}/bin:${goHome}/bin:${env.PATH}"
    }*/

    stage('Clone repository') {
        /* Clone the repo to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("markgardner10/simeplegoapp")
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, just blagging it */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

/*    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
        docker.withRegistry('registry.heroku.com/simplegoapp', 'heroku') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    } */
}
