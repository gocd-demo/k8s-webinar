#!/usr/bin/env bash

curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y nodejs
ln -s $(which nodejs) /usr/local/bin/node &&
node -v
git clone https://github.com/gocd-demo/k8s-webinar.git
npm install --prefix k8s-webinar/functional_tests; gauge install -d k8s-webinar/functional_tests; gauge run specs -d k8s-webinar/functional_tests
