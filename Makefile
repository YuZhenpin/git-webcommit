

NAME=git-webcommit

build:
	docker build -t $(NAME) .

run:
	docker run --rm --name $(NAME) -p 8088:80 -p 8443:443 -v $(PWD):/workspace -v ${PWD}:/var/www/html $(NAME)

stop:
	docker kill `docker ps -q -f name=$(NAME)`
