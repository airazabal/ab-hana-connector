rm hana.zip
zip -r hana.zip connect-hub/*
docker build -t connect .
docker run -it  connect