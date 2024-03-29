FROM ruby:3.1.2

RUN apt-get update && apt-get install -y build-essential
RUN gem install jekyll
RUN gem install jekyll-sitemap
RUN gem install jekyll-feed
RUN gem install jekyll-seo-tag

WORKDIR /app
COPY app/Gemfile .
COPY app/index.html .
RUN jekyll build

EXPOSE 4000

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]