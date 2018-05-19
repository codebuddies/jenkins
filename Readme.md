# codebuddies-jenkins

Local jenkins instance runnable with Docker to perform certain tasks with codebuddies.

## Feature set

* Deploy Codebuddies PR to now.sh for demo purposes
  * Requirements:
  * Dockerimage has to exist for PR, check https://hub.docker.com/v2/repositories/codebuddiesdotorg/codebuddies/tags/?page_size=9000 for corresponding tag
  * `NOW_TOKEN` has to be present in jenkins credentials
