# envsubst


## Build

```
docker build -t envsubst-docker .
```


## Publish

```
echo ${GITHUB_TOKEN} | docker login ghcr.io --username ${GITHUB_USERNAME} --password-stdin
docker tag envsubst-docker ghcr.io/${GITHUB_USERNAME}/envsubst
docker push ghcr.io/${GITHUB_USERNAME}/envsubst
```

see: https://github.com/features/packages
