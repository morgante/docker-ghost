# Quickstart

[Install Docker](https://www.docker.io/gettingstarted/), then:

```Shell
git clone https://github.com/livebytes/docker-ghost.git
cd docker-ghost
sudo docker build -t ghost .
sudo docker run -d -p <host_port>:2368 ghost
```
In a browser, open: `http://serverip:port`

### IP configuration
The node server binds to 0.0.0.0 for external access (the default is 127.0.0.1). You can change this in `config.example.js`.


### Adding your user to Ghost
Follow the manual provided by Ghost, for further installation: http://docs.ghost.org/
