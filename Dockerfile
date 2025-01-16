# Use an official Go image
FROM golang:1.22.3

# Set the working directory
WORKDIR /app

# Copy the application source code
COPY . .

# Build the Go application
RUN go build -o go-api

# Expose the port the application runs on
EXPOSE 8080

# Command to run the application
CMD ["./go-api"]
