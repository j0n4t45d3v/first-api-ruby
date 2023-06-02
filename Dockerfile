FROM ruby:3.0.4

WORKDIR /ruby

COPY ./Gemfile /ruby/

RUN bundle install

COPY . .

RUN bundle exec rake db:create

RUN bundle exec rake db:migrate

CMD ["ruby", "server.rb"]
