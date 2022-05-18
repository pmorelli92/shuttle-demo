## Requires developer to install on his/her machine both swag and redoc-cli
swagger/upd:
	swag init -g main.go -o ./swagger
	cd swagger && rm docs.go swagger.json
	cd swagger && redoc-cli bundle swagger.yaml -o swagger.html

docker/build:
	docker build -f Dockerfile -t nodep:local .

docker/run:
	docker run -p 8080:8080 nodep:local
