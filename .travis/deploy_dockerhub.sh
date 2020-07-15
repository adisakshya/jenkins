docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
docker tag ssh-service $DOCKER_USER/ssh-service:$TRAVIS_BUILD_NUMBER
docker push $DOCKER_USER/ssh-service:$TRAVIS_BUILD_NUMBER