help:
	@echo "build - Build container in production mode"
	@echo "run - Run container in production mode"

build:
	docker build -t="myadventure/myadventure" .

run: build
	docker run -d -p 192.168.1.200:80:80 -v $(CURDIR)/myadventure-api/app:/opt/api -v $(CURDIR)/myadventure-front/app:/opt/front myadventure/myadventure
