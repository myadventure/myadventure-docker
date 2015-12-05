help:
	@echo "build - Build container in production mode"
	@echo "run - Run container in production mode"

build:
	docker build -t="myadventure/myadventure" .

run: build
	docker run -d --name myadventure -p 192.168.1.200:80:80 myadventure
