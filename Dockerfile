FROM ubuntu:14.04
MAINTAINER Your Name "yourname@gmail.com"
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
