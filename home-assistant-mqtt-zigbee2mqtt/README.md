# Home Assistant, Mosquitto, and Zigbee2MQTT

This stack combines Home Assistant Container with an MQTT broker and Zigbee2MQTT. Home Assistant uses host networking for device discovery; its UI is available on port 8123. The MQTT listener and Zigbee2MQTT UI are restricted to the host. Home Assistant Container does not include the Supervisor or add-on store.

## Requirements

- Linux host with Docker Compose
- A supported Zigbee USB adapter
- The adapter's stable path from `/dev/serial/by-id`

## Run

Copy `.env.example` to `.env`, set `ZIGBEE_ADAPTER_DEVICE` to the adapter path, then run:

```bash
docker compose pull
docker compose up -d
```

Open `http://<host>:8123` to finish Home Assistant onboarding. Add the MQTT integration using broker address `127.0.0.1`, port `1883`; Zigbee2MQTT is at `http://127.0.0.1:8080` on the host.

The Zigbee2MQTT example uses the `zstack` adapter. Change `serial.adapter` in `zigbee2mqtt/configuration.yaml` to match your adapter. Mosquitto allows anonymous access but listens only on the host loopback interface and its private Compose network; do not publish port 1883 to the LAN or internet without adding authentication.
