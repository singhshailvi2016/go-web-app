FROM golang:1.20.5 as base
WORKDIR /app
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o main .
EXPOSE port 8080
CMD ["./main"]
