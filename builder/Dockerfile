FROM golang:1.16 as builder

WORKDIR /go/src/github.com/percona/mongodb_exporter

COPY .git ./.git
COPY go.mod go.sum ./
RUN go mod download
COPY mongodb_exporter.go mongodb_exporter.go
COPY vendor vendor
COPY collector ./collector
COPY shared ./shared
COPY Makefile Makefile

RUN make build

FROM scratch as scratch

COPY --from=builder /go/src/github.com/percona/mongodb_exporter/bin/mongodb_exporter /bin/mongodb_exporter

EXPOSE      9216
USER        59000:59000

ENTRYPOINT [ "/bin/mongodb_exporter" ]

FROM quay.io/sysdig/sysdig-mini-ubi:1 as ubi

COPY --from=builder /go/src/github.com/percona/mongodb_exporter/bin/mongodb_exporter /bin/mongodb_exporter

EXPOSE      9216
USER        59000:59000

ENTRYPOINT [ "/bin/mongodb_exporter" ]