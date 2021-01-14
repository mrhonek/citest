# Dockerfile References: https://docs.docker.com/engine/reference/builder/

# Use a scratch image because Go has zero runtime
# dependencies. Using a small base image helps keep
# our docker images small and secure.
FROM scratch

# Add Maintainer Info
LABEL maintainer="Nofar Bluestein <nofarb@gmail.com>"

# Set the Current Working Directory inside the container
WORKDIR /

# Copy go mod and sum files
COPY go-sample-app /go-sample-app

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./go-sample-app"]
