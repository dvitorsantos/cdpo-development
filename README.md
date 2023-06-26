## Deploy

```bash
docker compose -f cdpo.yml up
```


```bash
docker compose -f cloudnode.yml up
```

```bash
docker compose -f fognode.yml up

```
### Paradas de Ônibus

```bash
docker compose -f experimento-1.yml up
```

### Media de Velocidade da Avenida
```bash
docker compose -f experimento-2.yml up
```

## Taggear nós no tagger

```bash
PUT localhost:8180/tagger/taggedObject
```

```json
{
    "uuid": "cloudnode",
    "type": "CloudNode",
    "tags": {
        "block": "ufma"
    }
}
```


```json
{
    "uuid": "fognode",
    "type": "FogNode",
    "tags": {
        "block": "ufma"
    }
}
```

```json
{
    "uuid": "car_0",
    "type": "EdgeNode",
    "tags": {
        "type": "vehicle"
    }
}
```
