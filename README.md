# docker-linuxtools

A docker image with common linux tools (nano, wget, curl, etc)

Login first with:

```sh
docker login
```


Run with:

```sh
docker run --network -it yngvark/linuxtools bash
```

Other use cases:

```sh
docker run --network some_network -it yngvark/linuxtools bash
```
