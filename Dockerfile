# Use an ARM-compatible base image
FROM --platform=$BUILDPLATFORM golang:1.22.3

# Set the working directory
WORKDIR /app

# Copy the source code
COPY . .

# Set environment variables for cross-compilation
ARG TARGETPLATFORM
ARG TARGETOS
ARG TARGETARCH
ENV GOOS=$TARGETOS
ENV GOARCH=$TARGETARCH

# Build the Go application
RUN go build -o go-api

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["./go-api"]
