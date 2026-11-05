# Desafio Go

Imagem Docker de uma aplicação Go que imprime `Full Cycle Rocks!!`. O build é multi-stage: a compilação acontece em `golang:1.23.4-alpine` e a imagem final usa `scratch`, só com o binário estático.

## Imagem no Docker Hub

https://hub.docker.com/r/wcosta/desafio-go

## Como executar

```bash
docker run --rm wcosta/desafio-go
```

Saída esperada:

```
Full Cycle Rocks!!
```
