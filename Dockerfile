FROM ubuntu:18.04
COPY . /app
COPY docker-entrypoint.sh /
WORKDIR /app/xed
RUN apt-get update && apt-get install -y build-essential python
RUN ./mfile.py examples
WORKDIR obj/examples
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [] 
