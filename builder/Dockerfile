FROM golang:1.16 as builder

WORKDIR /go/src/github.com/percona/mongodb_exporter

COPY .git ./.git
COPY go.mod go.sum ./
RUN go mod download
COPY exporter ./exporter
COPY main.go main.go
COPY tools ./tools
COPY Makefile Makefile

RUN make build
RUN cp mongodb_exporter /bin/mongodb_exporter

FROM scratch

COPY --from=builder /bin/mongodb_exporter /bin/mongodb_exporter

EXPOSE      9216
USER        59000:59000

ENTRYPOINT [ "/bin/mongodb_exporter" ]