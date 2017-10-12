FROM debian:jessie

RUN apt-get update && apt-get install -y xvfb iceweasel
RUN apt-get install -y ruby bundler git
RUN gem install selenium-webdriver -v 2.53.4
RUN gem install watir-webdriver -v 0.9.1

ADD xvfb-firefox /usr/bin/xvfb-firefox
RUN rm /usr/bin/firefox
RUN ln -s /usr/bin/xvfb-firefox /usr/bin/firefox

#WORKDIR /app
ADD test.rb /app/test.rb

