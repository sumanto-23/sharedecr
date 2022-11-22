#! /bin/bash
docker pull httpd
docker run -dit --name hello1  httpd
docker cp ./work.sh hello1:/usr
docker ps
docker exec hello1 bash -c "/usr/work.sh"
docker commit hello1 hello1
docker tag hello1  public.ecr.aws/o8e3g5w6/test:latest
