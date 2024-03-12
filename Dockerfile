# base image
FROM golang:1.12.0-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
# start up executable
CMD ["/app/main"]
