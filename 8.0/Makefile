
test:
	TEST=$$(docker create trixie-build); \
		echo $$TEST

build-minideb:
	docker build -t trixie-build -f minideb-trixie-build.Dockerfile .
	./extract-image.sh

build-mongo:
	cd debian-13 && docker build -t dlavrenuek/bitnami-mongodb-arm:8.0.4 .

build: build-minideb build-mongo
