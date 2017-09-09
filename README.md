# Simple Python Flask Dockerized Application#

Build the image using the following command

```bash
$ docker build -t neo4j_docker:latest .
```

Run the Docker container using the command shown below.

```bash
$ docker run -d -p 5000:5000 neo4j_docker
```
Alternatively, build from remote repo using

```bash
$ docker build https://github.com/paddy10tellys/neo4j_docker.git 
```

Run the Docker container using the command shown below.

```bash
$ docker run -d -p 5000:5000 <container ID>
```

The application will be accessible at http://46.101.26.198:5000 or if you are using boot2docker then first find ip address using `$ boot2docker ip` and the use the ip `http://<host_ip>:5000`

