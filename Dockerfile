FROM octohost/ruby-1.8.7p352

RUN apt-get install libsqlite3-dev
ADD . /srv/www
RUN cd /srv/www; bundle install

EXPOSE 3000

CMD cd /srv/www; ./script/server