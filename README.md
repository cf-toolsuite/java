# `docker.io/cftoolsuite/java-buildpack`

The cf-toolsuite/java-buildpack for Java is a Cloud Native Buildpack with an order definition suitable for Java applications.

It is a derivative of [paketo-buildpacks/java](https://github.com/paketo-buildpacks/java)

## Included Buildpacks

* [`paketo-buildpacks/apache-tomcat`](https://github.com/paketo-buildpacks/apache-tomcat)
* [`paketo-buildpacks/apache-tomee`](https://github.com/paketo-buildpacks/apache-tomee)
* [`paketo-buildpacks/azure-application-insights`](https://github.com/paketo-buildpacks/azure-application-insights)
* [`paketo-buildpacks/bellsoft-liberica`](https://github.com/paketo-buildpacks/bellsoft-liberica)
* [`paketo-buildpacks/ca-certificates`](https://github.com/paketo-buildpacks/ca-certificates)
* [`paketo-buildpacks/clojure-tools`](https://github.com/paketo-buildpacks/clojure-tools)
* [`paketo-buildpacks/yarn`](https://github.com/paketo-buildpacks/yarn)
* [`paketo-buildpacks/node-engine`](https://github.com/paketo-buildpacks/node-engine)
* [`paketo-buildpacks/datadog`](https://github.com/paketo-buildpacks/datadog)
* [`paketo-buildpacks/dist-zip`](https://github.com/paketo-buildpacks/dist-zip)
* [`paketo-buildpacks/encrypt-at-rest`](https://github.com/paketo-buildpacks/encrypt-at-rest)
* [`paketo-buildpacks/environment-variables`](https://github.com/paketo-buildpacks/environment-variables)
* [`paketo-buildpacks/executable-jar`](https://github.com/paketo-buildpacks/executable-jar)
* [`paketo-buildpacks/google-stackdriver`](https://github.com/paketo-buildpacks/google-stackdriver)
* [`paketo-buildpacks/gradle`](https://github.com/paketo-buildpacks/gradle)
* [`paketo-buildpacks/image-labels`](https://github.com/paketo-buildpacks/image-labels)
* [`paketo-buildpacks/jattach`](https://github.com/paketo-buildpacks/jattach)
* [`paketo-buildpacks/java-memory-assistant`](https://github.com/paketo-buildpacks/java-memory-assistant)
* [`paketo-buildpacks/leiningen`](https://github.com/paketo-buildpacks/leiningen)
* [`paketo-buildpacks/liberty`](https://github.com/paketo-buildpacks/liberty)
* [`paketo-buildpacks/maven`](https://github.com/paketo-buildpacks/maven)
* [`paketo-buildpacks/procfile`](https://github.com/paketo-buildpacks/procfile)
* [`paketo-buildpacks/sbt`](https://github.com/paketo-buildpacks/sbt)
* [`paketo-buildpacks/spring-boot`](https://github.com/paketo-buildpacks/spring-boot)
* [`paketo-buildpacks/syft`](https://github.com/paketo-buildpacks/syft)
* [`paketo-buildpacks/watchexec`](https://github.com/paketo-buildpacks/watchexec)
* [`cf-toolsuite/spring-boot-runtime-metadata-buildpack`](https://github.com/cf-toolsuite/spring-boot-runtime-metadata-buildpack)

## License

This buildpack is released under version 2.0 of the [Apache License][a].

[a]: http://www.apache.org/licenses/LICENSE-2.0


## Clone

```
gh repo clone cf-toolsuite/java
```

## Prerequisites

* [pack](https://github.com/buildpacks/pack) CLI
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) or [Docker Engine](https://docs.docker.com/engine/)
  * docker CLI
* [Docker Hub](https://hub.docker.com/) account (alternatively, another container registry provider) and credentials

## Build

```
pack buildpack package cftoolsuite/java-buildpack:latest --config ./package.toml --format image
```

## Publish

```
docker login docker.io -u cftoolsuite -p <dckr_pat>
pack buildpack package cftoolsuite/java-buildpack:latest --config ./package.toml --format image --publish
```
> Replace `<dckr_pat>` above with personal access token for named user account on https://hub.docker.com

### Inner loop

If you're in the midst of updating the buildpack or builder, you can make use of [scripts](scripts):

```
./scripts/start-local-registry.sh
./scripts/build.sh local
./scripts/stop-local-registry.sh
./scripts/teardown.sh
```