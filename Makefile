.PHONY: all $(MAKECMDGOALS)

run:
	docker run --rm --volume `pwd`:/opt/app --env PYTHON_PATH=/opt/app -w /opt/app python:3.6-slim python3 main.py words.txt yes


#Modificación fichero Makefile - Ruth Monerris Meis

# Variables
APP_NAME = mi_aplicacion
RUN_CMD = ./bin/$(APP_NAME)

# Regla para ejecutar en local
run-local:
	@echo "Ejecutando $(APP_NAME) en local..."
	$(RUN_CMD)