
FROM golang:latest as stage_0

RUN mkdir /app
ADD . /app/
WORKDIR /app

RUN go build -o main .

FROM alpine:latest

COPY --from=stage_0 /app /app

EXPOSE 8088

CMD ["/app/main"]




