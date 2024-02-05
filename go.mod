module github.com/percona/mongodb_exporter

go 1.13

require (
	github.com/Masterminds/semver v1.5.0
	github.com/andreyvit/diff v0.0.0-20170406064948-c7f18ee00883
	github.com/percona/exporter_shared v0.4.0
	github.com/percona/pmm v0.0.0-20190616165924-3b769b4ca86e
	github.com/prometheus/client_golang v1.11.1
	github.com/prometheus/common v0.26.0
	github.com/sergi/go-diff v1.0.0 // indirect
	github.com/stretchr/testify v1.6.1
	go.mongodb.org/mongo-driver v1.5.1
	golang.org/x/crypto v0.17.0 // indirect
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
)
