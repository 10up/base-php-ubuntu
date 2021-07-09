all:
	docker buildx create --name base-php-builder || exit 0
	docker buildx build --builder base-php-builder --load -t base-php:local-build .

clean:
	docker rmi 10up/base-php:local-build || exit 0
	docker buildx rm base-php-builder || exit 0
