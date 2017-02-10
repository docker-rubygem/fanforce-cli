FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.0.rc13

RUN gem install fanforce-cli --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fanforce"]
CMD ["--help"]
