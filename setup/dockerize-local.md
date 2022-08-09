
# Dockerize
Create a [Dockerfile](../Dockerfile)

# Build and deploy in local

```shell script
docker build -t fudoor-web:0.0.1-prod .
docker run --rm -it --name fudoor-prod -p 80:80 fudoor-web:0.0.1-prod

http localhost
```

