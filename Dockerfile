FROM ubuntu:14.04
MAINTAINER Your Name "paddy10tellys@gmail.com"
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip python-dev build-essential
COPY . /home/pmy/blog
WORKDIR /home/pmy/blog
RUN pip install py2neo
RUN pip install -r requirements.txt
ADD app.py /home/pmy/blog/app.py
ENTRYPOINT ["python"]
CMD ["app.py"]
