FROM circleci/golang:1.17-buster-node

RUN go install github.com/tcnksm/ghr@latest

COPY ./entrypoint.sh /entrypoint.sh

CMD [ "/entrypoint.sh" ]
