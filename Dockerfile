FROM golang:1.22-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY . ./

RUN go build -o coreshopservice cmd/api/main.go

EXPOSE ${API_PORT}

CMD [ "./coreshopservice"]
