
FROM golang:1.24

WORKDIR /app

COPY go.mod ./
RUN go mod tidy
COPY . .

RUN go build -o main .


CMD ["./main"]
