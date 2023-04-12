# Based on RHEL 8 (GNU/Linux), equipped with oc, jq etc.
FROM registry.ci.openshift.org/ocp/4.14:tools

WORKDIR /go/src/github.com/openshift/openshift-tests-private

RUN echo 'alias c=clear' >> ~/.bashrc