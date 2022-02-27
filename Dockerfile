FROM golang:latest

RUN go install github.com/codesenberg/bombardier@latest

COPY ./fuckputin.sh .

CMD ./fuckputin.sh