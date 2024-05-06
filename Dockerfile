FROM ubuntu:24.04

RUN apt-get update 
RUN apt-get install ruby-full build-essential -y

RUN gem install jekyll bundler

WORKDIR /app
COPY Gemfile .
COPY index.html .

RUN jekyll build

EXPOSE 4000

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]