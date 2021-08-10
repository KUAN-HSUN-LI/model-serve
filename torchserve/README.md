### CPU
```
conda install torchserve torch-model-archiver torch-workflow-archiver -c pytorch

torch-model-archiver --model-name resnet152 --version 1.0 --model-file model-store/model.py --serialized-file resnet152.pth --export-path model_store --handler image_classifier

docker run --rm -it -p 8080:8080 -p 8081:8081 --cpus 1 --name torchserve -v $(pwd)/model-store:/home/model-server/model-store pytorch/torchserve:latest

curl -v -X POST "http://localhost:8081/models?initial_workers=1&synchronous=false&url=resnet152.mar&batch_size=1&max_batch_delay=1000"
```