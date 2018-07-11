FROM mhart/alpine-node:8
RUN yarn global add serverless
RUN apk -v --update add \
  python \
  py-pip \
  groff \
  less \
  mailcap \
  && \
  pip install --upgrade awscli && \
  apk -v --purge del py-pip && \
  rm /var/cache/apk/*