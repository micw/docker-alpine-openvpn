FROM alpine:3.7

RUN apk add --update --no-cache bash openvpn

ADD https://raw.githubusercontent.com/jpetazzo/pipework/master/pipework /pipework
ADD run.sh /run.sh

ENV OPENVPN_CONF=/etc/openvpn/openvpn.conf

CMD /run.sh
