# Dockerfile
FROM ruby:2.7.4

WORKDIR /domain
COPY . /domain

RUN gem install rerun
RUN bundle install

EXPOSE 4567
CMD ["/bin/bash"]