# syntax=docker/dockerfile:1
FROM golang:1.23

WORKDIR /src

COPY ./main.go ./main.go

RUN go build -o /bin/fibbon ./main.go

FROM scratch

COPY --from=0 /bin/fibbon /bin/fibbon

CMD ["/bin/fibbon"]
