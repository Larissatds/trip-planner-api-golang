FROM golang:1.23-alpine

WORKDIR /trip-planner-api-golang

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . .

WORKDIR /trip-planner-api-golang/cmd

RUN go build -o /trip-planner-api-golang/bin/api-go .

EXPOSE 8080

CMD ["/trip-planner-api-golang/bin/api-go"]
