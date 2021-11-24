## Simple image for factorio headless server

### Build

```shell
docker build \
-t $IMAGE_NAME:$IMAGE_TAG
--build-arg $SERVER_VERSION \
.
```
Note: Server version could be checked [here](https://www.factorio.com/)

### Run
```shell
docker container run \
--name factorio-server \
-v "$SERVER_SETTINGS_JSON:/opt/factorio/data/server-settings.json" \
-v "$SAVES_DIR:/opt/factorio/saves" \
-p "34197:34197/udp" \
$IMAGE_NAME:$IMAGE_TAG
```