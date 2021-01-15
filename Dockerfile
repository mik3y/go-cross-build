# Debian GNU/Linux 10 (1.15.6-buster)
FROM golang:1.15.6-buster

# copy entrypoint file
COPY entrypoint.go /usr/bin/entrypoint.go

# change mode of the entrypoint file
RUN chmod +x /usr/bin/entrypoint.go

# set entrypoint command
ENTRYPOINT [ "go", "run", "/usr/bin/entrypoint.go" ]
