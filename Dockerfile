FROM centos:8

# Setup the application home directory.
ENV APP_HOME="/app"
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY requirements.txt $APP_HOME
RUN mkdir $APP_HOME/src

RUN yum -y install python3-pip
RUN pip3 install -r requirements.txt

STOPSIGNAL SIGTERM
EXPOSE 80
CMD ["python3", "src/app.py"]