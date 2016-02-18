FROM debian:jessie
# add our user and group first to make sure their IDs get assigned consistently, regardless of other deps added later
RUN groupadd -r znc \
  && useradd -r -g znc znc
RUN mkdir -p /data/znc \
  && chown -R znc:znc /data/znc
VOLUME /data/znc
USER znc
CMD ["echo", "Data container for znc"]