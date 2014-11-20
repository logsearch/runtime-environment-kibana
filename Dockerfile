FROM node:0.10.33-slim
MAINTAINER David Laing <david@davidlaing.com>

RUN apt-get update
RUN apt-get install -y ruby1.9.3 libssl-dev
RUN gem install --no-ri --no-rdoc bundler
RUN npm install -g grunt-cli bower
RUN gem install --no-ri --no-rdoc rake -v 10.1.0
RUN gem install --no-ri --no-rdoc elasticsearch -v 1.0.4
RUN gem install --no-ri --no-rdoc warbler -v 1.4.4
RUN gem install --no-ri --no-rdoc jruby-jars -v 1.7.13

VOLUME ["/workspace"]
WORKDIR /workspace/src/kibana
