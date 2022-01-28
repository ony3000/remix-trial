## Deployment

* Requirements
  * Node 16+

1. Launch server with systemd

``` bash
# First, you need to fill in the empty WorkingDirectory value in the service file.

# Then do the following:
$ sudo cp remix-jokes.service /etc/systemd/system
$ sudo systemctl enable remix-jokes.service
```

2. Deploy

``` bash
$ git fetch
$ git checkout (RELEASE_VERSION)

$ npm install
$ npm run build

# When first deploying
$ sudo systemctl start remix-jokes.service

# After first deploying
$ sudo systemctl restart remix-jokes.service
```
