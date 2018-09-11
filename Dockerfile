
FROM golang:latest as stage_0

RUN mkdir /app
ADD . /app/
WORKDIR /app

RUN go build -o main .

FROM alpine:latest

COPY --from=stage_0 /app .

EXPOSE 8080

CMD ["/app/main"]




