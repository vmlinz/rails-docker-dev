FROM rails:latest

RUN bundle config --global frozen 1

ENV APP_HOME /usr/src/app/
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ENV BUNDLE_PATH /var/lib/bundle

ADD . $APP_HOME

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

