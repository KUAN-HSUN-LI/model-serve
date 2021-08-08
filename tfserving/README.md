```
docker run -t --rm --cpus 1 -p 8501:8501 -v $(pwd)/saved_model/resnet152:/models/resnet152 -e MODEL_NAME=resnet152 tensorflow/serving
```