FROM golang:latest

RUN go install github.com/codesenberg/bombardier@latest

# Prepare for install
RUN apt-get update -y && apt-get upgrade -y

# Get all needed binaries
RUN apt-get install curl -y

COPY . .

CMD ./javelin.sh