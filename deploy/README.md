## Deployment

* Requirements
  * Node 16+

1. Set environment variables

``` bash
$ cp .env.example .env

# Then you need to fill in the empty values in the env file.
$ vim .env
```

2. Launch server with systemd

``` bash
# First, you need to fill in the empty WorkingDirectory value in the service file.

# Then do the following:
$ sudo cp remix-jokes.service /etc/systemd/system
$ sudo systemctl enable remix-jokes.service
```

3. Deploy

``` bash
$ git fetch
$ git checkout (RELEASE_VERSION)

$ nvm use 16
$ npm install

# When first deploying only
$ npm run reset:db

$ npm run build

# When first deploying
$ sudo systemctl start remix-jokes.service

# After first deploying
$ sudo systemctl restart remix-jokes.service
```
