FROM golang:1.13.8-buster

WORKDIR /app

COPY . /app 

RUN go get github.com/endocode/hlowrld/logging

RUN go get github.com/endocode/hlowrld/server

RUN go get github.com/gorilla/mux

RUN go build -o main

EXPOSE 25478

CMD ["./main"]
