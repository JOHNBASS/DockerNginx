docker stop nginx-container
docker rm `docker ps --no-trunc -aq`
docker build . -t my-nginx-image
docker run -d -p 7777:80 --name nginx-container -d my-nginx-image
docker ps