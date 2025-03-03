FROM teddysun/xray
LABEL maintainer="https://github.com/tyeroe/miegu"

COPY config.json /etc/xray/config.json
COPY xray.sh /xray.sh
RUN chmod +x /xray.sh
ENV PATH /usr/bin/xray:$PATH
ENV PORT 8080
ENV TZ=Asia/Singapore

WORKDIR /etc/xray
ENTRYPOINT ["/xray.sh"]
CMD ["xray", "-config=/etc/xray/config.json"]
