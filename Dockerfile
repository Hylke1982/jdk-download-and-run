FROM openjdk:8-alpine

LABEL Description="This image downloads a jar file and run it (designed for excutable jars)"
LABEL maintainer="hylke.stapersma@gmail.com"

# Add script
ADD download-and-run.sh /download-and-run.sh

# Install packages
RUN   apk update \
  &&   apk add ca-certificates wget bash\
  &&   update-ca-certificates

ENTRYPOINT ["bash","/download-and-run.sh"]