test the build locally with

```
docker build -t mon-caddy-ovh .
# Or for another architecture
docker buildx build --platform linux/amd64 -t mon-caddy-ovh .
```

With the version in the command line
```
docker build --build-arg CADDY_VERSION=2.11.4 -t ton-caddy-ovh .
```


