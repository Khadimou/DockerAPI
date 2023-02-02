FROM ubuntu

RUN apt-get update && apt-get install -y python3 python-pip

EXPOSE 5000

RUN python3 -m http.server 5000

#COPY

#ENTRYPOINT bash  run --host=0.0.0.0 --port=8080
