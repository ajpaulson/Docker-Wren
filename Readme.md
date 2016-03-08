# Wren (http://wren.io/) in Docker

```
docker run -it ajpaulson/wren
```

If you want to run a locally created Wren file:
```
docker run -it -v "$PWD":/tmp -w /tmp ajpaulson/wren some_file.wren
```
