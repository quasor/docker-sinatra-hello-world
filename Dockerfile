FROM ruby
ADD . /opt/sinatra/
EXPOSE 5000
RUN cd /opt/sinatra && git pull && bundle install
CMD ["/usr/local/bin/foreman","start","-d","/opt/sinatra"]
