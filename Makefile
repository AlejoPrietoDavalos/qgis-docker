.PHONY: up

up:
	@if [ -z "$$DISPLAY" ]; then echo "DISPLAY no está seteada. Exporta DISPLAY antes de continuar."; exit 1; fi
	@if command -v xhost >/dev/null 2>&1; then echo "Habilitando acceso X para Docker..."; xhost +local:docker; else echo "xhost no está instalado (paquete xorg-xhost)."; exit 1; fi
	@docker compose up
