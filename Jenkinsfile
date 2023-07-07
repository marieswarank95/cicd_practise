pipeline {
agent {
docker { image 'node:12.0' }
}
stages {
stage ("build and push") {
steps {
sh '''docker build -t marieswaran/cicd_practise .
docker push marieswaran/cicd_practise'''
}
}
}  
}
