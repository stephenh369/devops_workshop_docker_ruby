FROM ubuntu
RUN apt-get update
RUN apt-get -y install ruby

RUN mkdir sinatra_docker_demo
COPY . ./sinatra_docker_demo

RUN gem install bundler
RUN cd ./sinatra_docker_demo && bundle install

EXPOSE 4567

CMD ["ruby", "./sinatra_docker_demo/app.rb"]