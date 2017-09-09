# Simple Neo4j Dockerized Application#

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

docker run  
        -p 7474:7474 \
        -p 7687:7687 \
        -p 7473:7473 \
        -v $HOME/neo4j/data:/data \
        -v $HOME/neo4j/logs:/logs \
        -v $HOME/neo4j/import:/var/lib/neo4j/import \
        -v $HOME/neo4j/conf/:/conf/ \
        neo4j:3.0.6-enterprise



```

The application will be accessible at http://46.101.26.198:7474 or http://46.101.26.198:7687 or http://46.101.26.198:7473 
7474 for HTTP.
7473 for HTTPS.
7687 for Bolt.

