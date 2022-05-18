swag init -g main.go -o ./swagger
cd swagger
rm docs.go swagger.json
redoc-cli bundle swagger.yaml -o swagger.html
