FROM ruby:2.5
WORKDIR /myapp
COPY jsonfetcher-0.0.0.gem /myapp
COPY main.rb /myapp

RUN gem install ./jsonfetcher-0.0.0.gem
ENTRYPOINT ["ruby", "main.rb"]
CMD []