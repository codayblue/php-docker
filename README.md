# PHP image bundled with NGINX

To configure PHP the docs can be found at the [PHP image documentation](https://hub.docker.com/_/php/)

To configure NGINX follow the [docs](https://docs.nginx.com/nginx/admin-guide/)

## How to use the image

### Tags

- latest

- 7.2 

### Command line

`docker run -v /path/to/src:/var/www/html -p <hostport>:80 -p <hostport>:443 codayblue/php:<tag>`

### Docker Compose

```
version: "3"
services:
    webservice:
        image: codayblue/php:<tag>
        volume: 
            - /path/to/src:/var/www/html
        ports:
            - <host port>:80
            - <host port>:443
```
