# kaniko-ci-builder
An easier way to build docker images with kaniko and gitlab

### Usage

```yaml
build:
  stage: build
  image:
    name: neuromantik33/kaniko-ci-builder:latest
  script:
    - /executor -c $CI_PROJECT_DIR -f $CI_PROJECT_DIR/Dockerfile -d $DOCKER_IMAGE:$DOCKER_IMAGE_TAG
```
