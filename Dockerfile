FROM golang:1.18-alpine3.14 AS compiler

WORKDIR /builder

# There is no explicit addition of go.mod and go.sum
# Nor go mod download as there are no dependencies

ADD . ./
RUN CGO_ENABLED=0 go build main.go

FROM scratch
COPY --from=compiler /builder/main /main
EXPOSE 8080
ENTRYPOINT ["/main"]
