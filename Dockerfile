# base image 
FROM golang:1.24.4-alpine3.22
#creates directory if doesn't exist
WORKDIR /go/src/Docker-Go
#copying mod and sum files
COPY go.mod .
COPY go.sum .
#copy all code
COPY . . 
#compile and build go app
RUN go build -o main .
#expose the port
EXPOSE 8080

ENTRYPOINT [ "./main" ]
