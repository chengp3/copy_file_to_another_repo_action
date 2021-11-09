FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git rsync

ADD entrypoint.sh /entrypoint.sh
    main.sh /main.sh

ENTRYPOINT [ "/entrypoint.sh" ]
