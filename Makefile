build-image:
	docker build -t zookeeper:3.4.5 .

run-container:
	docker run -it zookeeper:3.4.5 /bin/bash

