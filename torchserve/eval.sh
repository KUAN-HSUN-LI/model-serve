for i in {0..980};
do
    curl http://127.0.0.1:8080/predictions/resnet152 -T ../images/test_$i.JPEG
done
