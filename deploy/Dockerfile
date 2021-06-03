FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y ca-certificates jq

RUN echo "deb [trusted=yes] https://packages.cloudfoundry.org/debian stable main" > /etc/apt/sources.list.d/cloudfoundry-cli.list
RUN apt-get update
RUN apt-get install -y cf7-cli

ADD deploy/entrypoint.sh /entrypoint.sh
ADD build/libs/appcloud-cd-example-1.0.jar build/libs/appcloud-cd-example-1.0.jar
ADD manifest.yml manifest.yml

ENTRYPOINT ["/entrypoint.sh"]
