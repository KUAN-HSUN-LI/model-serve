### CPU
```
docker run --rm -it -p 8080:8080 -p 8081:8081 --cpus 1 --name torchserve -v $(pwd)/model-store:/home/model-server/model-store pytorch/torchserve:latest

curl -v -X POST "http://localhost:8081/models?initial_workers=1&synchronous=false&url=resnet152.mar&batch_size=1&max_batch_delay=1000"
```