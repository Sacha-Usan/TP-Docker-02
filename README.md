# TP-Docker-02

## Run infrastructure
```bash
docker network create tp-docker-02
docker network ls

#----------------------------------------------
docker run -d -p 27017:27017 mongo:3.2
docker rename charming_edison mongodb
docker network connect tp-docker-02 <container-id>

#docker run -d -p 27017:27017 --name mongodb --net tp-docker-02 mongo:3.2
#----------------------------------------------

docker build -t sachausan/tp2docker:v1 .
#----------------------------------------------

docker push sachausan/tp2docker:v1
#----------------------------------------------

docker run -p 5000:5000 --net tp-docker-02 sachausan/tp2docker:v1
```
