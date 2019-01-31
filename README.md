# Drone Google Cloud cli Plugin

[![Build Status](https://travis-ci.org/pathmotion/drone-gcloud-cli-plugin.svg?branch=master)](https://travis-ci.org/pathmotion/drone-gcloud-cli-plugin)

Lightweight drone plugin to use the gcloud commands in an authenticated context.

It uses the official Google Cloud SDK image.

## Usage

```yaml
pipeline:
  copy:
    image: pathmotion/drone-gcloud-cli-plugin
    project: my-google-cloud-project
    cmd: gcloud datastore indexes create index.yaml
    secrets:
      - source: GCLOUD_SERVICE_ACCOUNT
        target: GCLOUD_SERVICE_ACCOUNT
    when:
      event: deployment
```


## Parameters

* **project** : The google cloud project to use
* **cmd** : The command to run. gcloud, gstorage and other official cli commands are available


## Secrets

Create a Google Cloud service account with the needed permissions.

Make sure its content is exposed through the GCLOUD_CREDENTIALS secret.