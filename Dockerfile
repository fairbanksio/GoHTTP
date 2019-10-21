# Start from the latest golang base image
FROM golang:latest

# Add Maintainer Info
LABEL maintainer="Fairbanks-io <github.com/Fairbanks-io>"

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the source from the current directory to the Working Directory inside the container
COPY ./src .

# Build the Go app
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8000

# Command to run the executable
CMD ["./main"]