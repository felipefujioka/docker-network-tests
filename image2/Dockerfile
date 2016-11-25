FROM ruby:2.3

# Create temp dist dir
RUN mkdir /srv/repos && mkdir /srv/repos/dist
WORKDIR /srv/repos

# Solve Ruby dependecies
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

# Get source from local machine
COPY . dist
WORKDIR /srv/repos/dist

ENTRYPOINT ["bundle", "exec"]
