FROM octohost/ruby-1.8

ADD . /srv/www
RUN cd /srv/www; bundle install --deployment --without test development

EXPOSE 3000

CMD cd /srv/www; ./script/server
