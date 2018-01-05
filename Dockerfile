FROM alpine:3.7

RUN apk add --update --no-cache bash openvpn

ADD https://github.com/jpetazzo/pipework/blob/master/pipework /pipework
ADD run.sh /run.sh

ENV OPENVPN_CONF=/etc/openvpn/openvpn.conf

CMD /run.sh
