FROM node:boron-alpine
EXPOSE 3000

RUN apk --update --no-cache add jq curl tar

LABEL org.label-schema.vendor="IBM" \
      org.label-schema.name="$IMAGE_NAME" \
      org.label-schema.description="$IMAGE_DESCRIPTION" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url=$VCS_URL \
      org.label-schema.license="Licensed Materials - Property of IBM" \
      org.label-schema.schema-version="1.0"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN curl -L  https://github.com/watson-developer-cloud/conversation-simple/archive/master.tar.gz --output /tmp/master.tar.gz && \
    tar -xzvf /tmp/master.tar.gz -C /usr/src/app --strip-components 1

RUN npm install --production

COPY entrypoint.sh /usr/src/app
RUN chmod +x /usr/src/app/entrypoint.sh

CMD [ "/usr/src/app/entrypoint.sh"]
