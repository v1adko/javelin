FROM golang:latest

RUN go get -u github.com/codesenberg/bombardier

COPY ./fuckputin.sh .

CMD ./fuckputin.sh