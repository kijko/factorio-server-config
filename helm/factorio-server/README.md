## Installation

```shell
helm install \
-n factorio-server \
--set image.tag=$IMAGE_TAG,game.password=$GAME_PASS \
factorio-server
$CHART_DIR
```