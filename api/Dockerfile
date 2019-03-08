FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /docker-api
WORKDIR /docker-api
COPY Gemfile /docker-api/Gemfile
COPY Gemfile.lock /docker-api/Gemfile.lock
RUN bundle install
COPY . /docker-api

# Add a script to be executed when the container starts.
# Reference: https://docs.docker.com/compose/rails/
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
