POD_NAME := "test-env"
BUILD_NAME := "robot-demo"


build:
	podman build -t {{BUILD_NAME}} .

run:
	podman run -it --rm --pod {{POD_NAME}} --name demo -v ./log:/app/log:Z -v ./.env:/app/.env:Z -v ./demo:/app/demo:Z localhost/{{BUILD_NAME}}:latest

run-interactively:
	podman run -it --rm --pod {{POD_NAME}} --name demo -v ./log:/app/log:Z -v ./.env:/app/.env:Z -v ./demo:/app/demo:Z localhost/{{BUILD_NAME}}:latest

create-pod:
	podman pod create --name {{POD_NAME}} --replace -p 4444:4444 -p 7900:7900

add-selenium-standalone:
	podman run --replace --name hub --pod={{POD_NAME}} -d --shm-size="2g" selenium/standalone-chrome:latest

clean:
    podman pod rm -f {{POD_NAME}}
