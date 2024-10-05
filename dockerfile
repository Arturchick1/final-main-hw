FROM golang:1.23.0

WORKDIR /final-main-hw

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /final-main-hw main.go

CMD ["/final-main-hw"]