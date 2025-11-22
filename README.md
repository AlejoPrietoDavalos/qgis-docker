# QGIS Docker

## Primera vez
- Dependencias del sistema en Arch.
```bash
sudo pacman -S qt5ct kvantum-qt5 breeze-icons
```

- Paso previo necesario (solo una vez por sesión)
```bash
xhost +local:docker
```

## Quickstart
```bash
docker compose up
```
- O usa `make up` para que ejecute `xhost +local:docker` automáticamente y levante el contenedor.
- El `HOME` se monta en la misma ruta que en el host (`${HOME}` → `${HOME}` dentro del contenedor) para que los paths que muestra QGIS coincidan y pueda leer tus ficheros (ej. GeoJSON) sin “Invalid Data Source”.
- El contenedor arranca `qgis` directamente, así que si se cierra al instante revisa que `DISPLAY` esté exportada y que hayas ejecutado `xhost +local:docker` en la sesión actual.
