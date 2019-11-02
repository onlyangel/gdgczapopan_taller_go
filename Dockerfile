# Dockerfile References: https://docs.docker.com/engine/reference/builder/

# Start from the latest golang base image
FROM golang:latest

# Add Maintainer Info
LABEL maintainer="Rajeev Singh <rajeevhub@gmail.com>"

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go mod and sum files
COPY switch1.go ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
# Copy the source from the current directory to the Working Directory inside the container

# Build the Go app
RUN go build -o main .

# Expose port 8080 to the outside w
# Command to run the executable
CMD ["./main"]
