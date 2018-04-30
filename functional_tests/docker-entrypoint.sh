#!/usr/bin/env bash

git clone https://github.com/gocd-demo/k8s-webinar.git
npm install --prefix k8s-webinar/functional_tests; gauge install -d k8s-webinar/functional_tests; gauge run specs -d k8s-webinar/functional_tests
