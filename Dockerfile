FROM registry.ci.openshift.org/openshift/release:rhel-8-release-golang-1.19-openshift-4.13

WORKDIR /go/src/github.com/openshift/openshift-tests-private

RUN echo 'alias c=clear' >> ~/.bashrc