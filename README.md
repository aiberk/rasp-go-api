# rasp-go-api

## MAC OS

## Docker build

```bash
docker buildx build --platform linux/arm/v8,linux/amd64 -t abyiber/go-api:latest --push .
```

docker buildx build --no-cache --platform linux/arm/v8,linux/amd64 -t abyiber/go-api:latest --push .

## Run on Mac

docker run -d -p 8080:8080 --name go-api-mac abyiber/go-api:latest

## Raspberry Pi

get the image from docker hub

```bash
sudo docker pull abyiber/go-api:latest
```

sudo docker run -d -p 8080:8080 abyiber/go-api:latest
sudo docker ps -a
sudo docker stop <container_id>
