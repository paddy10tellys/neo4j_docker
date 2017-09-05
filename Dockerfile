FROM ubuntu:14.04
MAINTAINER Your Name "paddy10tellys@gmail.com"
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip python-dev build-essential nginx
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN pip install virtualenvwrapper
RUN source virtualenvwrapper.sh
RUN mkvirtualenv -- venv
RUN lsvirtualenv
RUN export WORKON_HOME=$HOME/.virtualenvs
RUN echo $WORKON_HOME
ENTRYPOINT ["python"]
CMD ["app.py"]
