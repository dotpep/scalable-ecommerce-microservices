FROM golang:1.22-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY . ./

#RUN go build -o /coreshopservice
RUN go build -o coreshopservice cmd/api/main.go

# TODO: handle .env variable port
    # or top layer golang directory config/main.yml
EXPOSE 8080

CMD [ "./coreshopservice"]
