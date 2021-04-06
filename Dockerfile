FROM golang:1.15 as dev

WORKDIR /workspace

# Build the binary for production
FROM golang:1.15 as build

WORKDIR /app
COPY ./app/* /app/
RUN go build -o app

# Run the binary in a lightweight container
FROM alpine as runtime 
COPY --from=build /app/app /
CMD ./app 

