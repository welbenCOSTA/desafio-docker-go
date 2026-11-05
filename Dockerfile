FROM golang:1.23.4-alpine AS builder

WORKDIR /app

COPY go.mod main.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -trimpath -ldflags="-s -w" -o main .

FROM scratch

COPY --from=builder /app/main /main

ENTRYPOINT ["/main"]
