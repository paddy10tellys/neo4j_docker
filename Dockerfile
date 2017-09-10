FROM ubuntu:14.04
MAINTAINER Your Name "paddy10tellys@gmail.com"
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip python-dev build-essential
COPY . /blog
WORKDIR /blog
RUN pip install py2neo
RUN pip install -r requirements.txt
ADD app.py /home/pmy/bog/app.py
ENTRYPOINT ["python"]
CMD ["app.py"]
